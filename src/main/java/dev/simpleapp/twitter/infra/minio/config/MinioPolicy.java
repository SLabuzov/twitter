package dev.simpleapp.twitter.infra.minio.config;

import com.fasterxml.jackson.annotation.JsonProperty;
import java.util.List;
import java.util.Set;

public record MinioPolicy(
        @JsonProperty("Version")
        String version,

        @JsonProperty("Statement")
        List<Statement> statement
) {

    public record Statement(
            @JsonProperty("Effect")
            String effect,

            @JsonProperty("Principal")
            String principal,

            @JsonProperty("Action")
            Set<String> action,

            @JsonProperty("Resource")
            Set<String> resource
    ) {}

    // Фабричный метод для создания политики "публичное чтение"
    public static MinioPolicy publicRead(String bucket) {
        return new MinioPolicy(
                "2012-10-17",
                List.of(
                        new Statement(
                                "Allow",
                                "*",
                                Set.of("s3:GetObject"),
                                Set.of("arn:aws:s3:::" + bucket + "/*")
                        )
                )
        );
    }
}
