package dev.simpleapp.twitter.infra.minio.service;

import dev.simpleapp.twitter.common.dto.FileUploadRequest;
import dev.simpleapp.twitter.common.exception.TwitterException;
import dev.simpleapp.twitter.common.i18n.MessageProvider;
import dev.simpleapp.twitter.common.service.FileStorageService;
import dev.simpleapp.twitter.infra.minio.config.MinioProperties;
import io.minio.MinioClient;
import io.minio.PutObjectArgs;
import java.util.UUID;
import org.springframework.stereotype.Service;

@Service
public class MinioFileStorageService implements FileStorageService {

    private final MinioClient minioClient;
    private final MinioProperties properties;
    private final FileStorageProperties fileStorageProperties;
    private final MessageProvider messageProvider;

    public MinioFileStorageService(MinioClient minioClient,
                                   MinioProperties properties,
                                   FileStorageProperties fileStorageProperties,
                                   MessageProvider messageProvider) {
        this.minioClient = minioClient;
        this.properties = properties;
        this.fileStorageProperties = fileStorageProperties;
        this.messageProvider = messageProvider;
    }

    @Override
    public String uploadFile(FileUploadRequest request, String folder) {
        validateFile(request);

        String extension = extractExtension(request.fileName());
        String objectName = folder + "/" + UUID.randomUUID() + extension;

        try {
            minioClient.putObject(PutObjectArgs.builder()
                    .bucket(properties.bucket())
                    .object(objectName)
                    .stream(request.content(), request.size(), -1L)
                    .contentType(request.contentType())
                    .build());
        } catch (Exception e) {
            throw new TwitterException(messageProvider.getMessage("error.file.upload.failed"));
        }

        return buildFileUrl(properties.url(), properties.bucket(), objectName);
    }

    private void validateFile(FileUploadRequest request) {
        if (request.size() == 0) {
            throw new TwitterException(messageProvider.getMessage("error.file.empty"));
        }

        long maxSize = fileStorageProperties.maxFileSize().toBytes();
        if (request.size() > maxSize) {
            throw new TwitterException(messageProvider.getMessage("error.file.too.large"));
        }

        String contentType = request.contentType();
        if (contentType == null || !fileStorageProperties.allowedContentTypes().contains(contentType)) {
            throw new TwitterException(messageProvider.getMessage("error.file.not.image"));
        }
    }

    private String extractExtension(String fileName) {
        if (fileName != null && fileName.contains(".")) {
            return fileName.substring(fileName.lastIndexOf("."));
        }
        return ".jpg"; // fallback
    }

    private String buildFileUrl(String baseUrl, String bucket, String objectName) {
        // Защита от двойных слешей, если в application.yml url заканчивается на "/"
        String cleanBaseUrl = baseUrl.endsWith("/") ? baseUrl.substring(0, baseUrl.length() - 1) : baseUrl;
        return cleanBaseUrl + "/" + bucket + "/" + objectName;
    }
}
