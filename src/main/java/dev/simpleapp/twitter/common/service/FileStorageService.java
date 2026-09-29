package dev.simpleapp.twitter.common.service;

import dev.simpleapp.twitter.common.dto.FileUploadRequest;

public interface FileStorageService {
    String uploadFile(FileUploadRequest request, String folder);
}
