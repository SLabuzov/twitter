package dev.simpleapp.twitter.common.dto;

import java.util.List;

public record PageResponse<T>(
        List<T> content,
        long totalElements,
        int currentPage,
        int totalPages,
        boolean isFirst,
        boolean isLast
) {
    public static <T> PageResponse<T> from(org.springframework.data.domain.Page<?> page, List<T> content) {
        return new PageResponse<>(
                content,
                page.getTotalElements(),
                page.getNumber(),
                page.getTotalPages(),
                page.isFirst(),
                page.isLast()
        );
    }
}
