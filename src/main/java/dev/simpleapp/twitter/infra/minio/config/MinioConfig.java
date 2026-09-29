package dev.simpleapp.twitter.infra.minio.config;

import dev.simpleapp.twitter.infra.minio.service.FileStorageProperties;
import io.minio.BucketExistsArgs;
import io.minio.MakeBucketArgs;
import io.minio.MinioClient;
import io.minio.SetBucketPolicyArgs;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationRunner;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Slf4j
@Configuration
@EnableConfigurationProperties({MinioProperties.class, FileStorageProperties.class})
public class MinioConfig {

    @Bean
    public MinioClient minioClient(MinioProperties properties) {
        return MinioClient.builder()
                .endpoint(properties.url())
                .credentials(properties.accessKey(), properties.secretKey())
                .build();
    }

    @Bean
    public ApplicationRunner minioBucketInitializer(MinioClient minioClient,
                                                    MinioProperties properties,
                                                    MinioPolicySerializer policySerializer) {
        return args -> {
            try {
                boolean exists = minioClient.bucketExists(
                        BucketExistsArgs.builder().bucket(properties.bucket()).build()
                );

                if (!exists) {
                    minioClient.makeBucket(
                            MakeBucketArgs.builder().bucket(properties.bucket()).build()
                    );

                    // Формируем политику как объект и сериализуем
                    MinioPolicy policy = MinioPolicy.publicRead(properties.bucket());
                    String policyJson = policySerializer.serialize(policy);

                    minioClient.setBucketPolicy(
                            SetBucketPolicyArgs.builder()
                                    .bucket(properties.bucket())
                                    .config(policyJson)
                                    .build()
                    );

                    log.info("Created and configured MinIO bucket: {}", properties.bucket());
                }
            } catch (Exception e) {
                log.error("Failed to initialize MinIO bucket '{}': {}", properties.bucket(), e.getMessage(), e);
            }
        };
    }

}
