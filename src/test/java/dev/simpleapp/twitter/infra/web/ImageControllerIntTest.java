package dev.simpleapp.twitter.infra.web;

import dev.simpleapp.twitter.infra.minio.service.FileStorageProperties;
import dev.simpleapp.twitter.security.web.model.LoginRequest;
import io.minio.GetObjectArgs;
import io.minio.MinioClient;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.webmvc.test.autoconfigure.AutoConfigureMockMvc;
import org.springframework.http.MediaType;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.testcontainers.containers.MinIOContainer;
import org.testcontainers.junit.jupiter.Container;
import org.testcontainers.junit.jupiter.Testcontainers;
import org.testcontainers.utility.DockerImageName;
import tools.jackson.databind.ObjectMapper;

import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Locale;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@SpringBootTest
@AutoConfigureMockMvc
@Testcontainers
class ImageControllerIntTest {

    private static final String BUCKET = "test-bucket";

    private static final DockerImageName MINIO_IMAGE = DockerImageName
            .parse("pgsty/minio:RELEASE.2026-06-18T00-00-00Z")
            .asCompatibleSubstituteFor("minio/minio");

    // Специализированный MinIO-контейнер из testcontainers-minio
    @Container
    static MinIOContainer minioContainer = new MinIOContainer(
            MINIO_IMAGE
    );

    @DynamicPropertySource
    static void configureMinioProperties(DynamicPropertyRegistry registry) {
        registry.add("twitter.minio.url", minioContainer::getS3URL);
        registry.add("twitter.minio.access-key", minioContainer::getUserName);
        registry.add("twitter.minio.secret-key", minioContainer::getPassword);
        registry.add("twitter.minio.bucket", () -> BUCKET);
    }

    @Autowired
    private MockMvc restMockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @Autowired
    private MinioClient minioClient;

    @Autowired
    private FileStorageProperties fileStorageProperties;

    private String accessToken;

    @BeforeEach
    void setUp() throws Exception {
        Locale.setDefault(Locale.ENGLISH);

        LoginRequest loginRequest = new LoginRequest(
                "eduardo_jaskolski71@yahoo.com",
                "password"
        );

        MvcResult result = restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .post("/api/v1/authentication/access_token")
                                .contentType(MediaType.APPLICATION_JSON)
                                .content(objectMapper.writeValueAsBytes(loginRequest))
                )
                .andExpect(status().isOk())
                .andReturn();

        String responseBody = result.getResponse().getContentAsString();
        accessToken = objectMapper.readTree(responseBody).get("idToken").asString();
    }

    @Test
    void shouldUploadImageSuccessfully() throws Exception {
        byte[] imageBytes = createFakeJpegBytes();
        MockMultipartFile file = new MockMultipartFile(
                "file",
                "avatar.jpg",
                "image/jpeg",
                imageBytes
        );

        MvcResult result = restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .multipart("/api/v1/images")
                                .file(file)
                                .header("Authorization", "Bearer " + accessToken)
                                .param("folder", "avatars")
                )
                .andExpect(status().isCreated())
                .andExpect(jsonPath("$.url").isString())
                .andReturn();

        String responseJson = result.getResponse().getContentAsString();
        String uploadedUrl = objectMapper.readTree(responseJson).get("url").asString();

        // Проверяем, что файл реально сохранился в MinIO
        String objectName = extractObjectNameFromUrl(uploadedUrl);
        try (InputStream storedFile = minioClient.getObject(
                GetObjectArgs.builder()
                        .bucket(BUCKET)
                        .object(objectName)
                        .build())) {

            byte[] storedBytes = storedFile.readAllBytes();
            assertThat(storedBytes).isEqualTo(imageBytes);
        }
    }

    @Test
    void shouldRejectNonImageFile() throws Exception {
        MockMultipartFile file = new MockMultipartFile(
                "file",
                "document.pdf",
                "application/pdf",
                "fake pdf content".getBytes(StandardCharsets.UTF_8)
        );

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .multipart("/api/v1/images")
                                .file(file)
                                .header("Authorization", "Bearer " + accessToken)
                )
                .andExpect(status().isBadRequest());
    }

    @Test
    void shouldRejectEmptyFile() throws Exception {
        MockMultipartFile file = new MockMultipartFile(
                "file",
                "empty.jpg",
                "image/jpeg",
                new byte[0]
        );

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .multipart("/api/v1/images")
                                .file(file)
                                .header("Authorization", "Bearer " + accessToken)
                )
                .andExpect(status().isBadRequest());
    }

    @Test
    void shouldRejectFileLargerThanLimit() throws Exception {
        int size = (int) fileStorageProperties.maxFileSize().toBytes() + 1;
        byte[] largeImage = new byte[size];
        MockMultipartFile file = new MockMultipartFile(
                "file",
                "huge.jpg",
                "image/jpeg",
                largeImage
        );

        restMockMvc
                .perform(
                        MockMvcRequestBuilders
                                .multipart("/api/v1/images")
                                .file(file)
                                .header("Authorization", "Bearer " + accessToken)
                )
                .andExpect(status().isBadRequest());
    }

    private String extractObjectNameFromUrl(String url) {
        String prefix = "/" + BUCKET + "/";
        int idx = url.indexOf(prefix);
        if (idx < 0) {
            throw new IllegalArgumentException("Cannot extract object name from URL: " + url);
        }
        return url.substring(idx + prefix.length());
    }

    private byte[] createFakeJpegBytes() {
        byte[] jpegHeader = new byte[]{
                (byte) 0xFF, (byte) 0xD8, (byte) 0xFF, (byte) 0xE0,
                0x00, 0x10, 0x4A, 0x46, 0x49, 0x46, 0x00, 0x01
        };
        byte[] payload = new byte[1024];
        byte[] result = new byte[jpegHeader.length + payload.length];
        System.arraycopy(jpegHeader, 0, result, 0, jpegHeader.length);
        System.arraycopy(payload, 0, result, jpegHeader.length, payload.length);
        return result;
    }
}
