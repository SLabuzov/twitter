package dev.simpleapp.twitter.infra.minio.config;

import org.springframework.stereotype.Component;
import tools.jackson.databind.ObjectMapper;

@Component
public class MinioPolicySerializer {

    private final ObjectMapper objectMapper;

    public MinioPolicySerializer(ObjectMapper objectMapper) {
        this.objectMapper = objectMapper;
    }

    public String serialize(MinioPolicy policy) {
        return objectMapper.writeValueAsString(policy);
    }
}
