package dev.simpleapp.twitter.common.dto;

import java.io.InputStream;

public record FileUploadRequest(
        InputStream content,
        String fileName,
        String contentType,
        long size
) {
}
