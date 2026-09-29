package dev.simpleapp.twitter.infra.minio.service;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import java.util.Set;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.util.unit.DataSize;
import org.springframework.validation.annotation.Validated;

@Validated
@ConfigurationProperties(prefix = "twitter.file-storage")
public record FileStorageProperties(
        @NotNull
        DataSize maxFileSize,

        @NotEmpty
        Set<String> allowedContentTypes
) {}
