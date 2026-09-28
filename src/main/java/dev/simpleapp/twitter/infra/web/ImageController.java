package dev.simpleapp.twitter.infra.web;

import dev.simpleapp.twitter.common.dto.FileUploadRequest;
import dev.simpleapp.twitter.common.service.FileStorageService;
import java.io.IOException;
import java.util.Map;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/v1/images")
public class ImageController {

    private final FileStorageService fileStorageService;

    public ImageController(FileStorageService fileStorageService) {
        this.fileStorageService = fileStorageService;
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Map<String, String> uploadImage(@RequestParam("file") MultipartFile file,
                                           @RequestParam(value = "folder", defaultValue = "general") String folder) throws IOException {
        FileUploadRequest request = new FileUploadRequest(
                file.getInputStream(),
                file.getOriginalFilename(),
                file.getContentType(),
                file.getSize()
        );

        String url = fileStorageService.uploadFile(request, folder);
        return Map.of("url", url);
    }
}
