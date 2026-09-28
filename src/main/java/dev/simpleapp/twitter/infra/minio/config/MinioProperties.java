package dev.simpleapp.twitter.infra.minio.config;

import jakarta.validation.constraints.NotBlank;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.validation.annotation.Validated;

@Validated
@ConfigurationProperties(prefix = "twitter.minio")
public record MinioProperties(
        @NotBlank(message = "MinIO URL must not be blank")
        String url,

        @NotBlank(message = "MinIO access-key must not be blank")
        String accessKey,

        @NotBlank(message = "MinIO secret-key must not be blank")
        String secretKey,

        @NotBlank(message = "MinIO bucket must not be blank")
        String bucket
) {}
