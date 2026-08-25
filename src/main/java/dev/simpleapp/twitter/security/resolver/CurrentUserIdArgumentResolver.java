package dev.simpleapp.twitter.security.resolver;

import dev.simpleapp.twitter.security.api.annotation.CurrentUser;
import dev.simpleapp.twitter.security.api.exception.CurrentUserNotAuthenticatedException;
import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import dev.simpleapp.twitter.security.api.service.IdentityApiService;
import org.jspecify.annotations.NonNull;
import org.springframework.core.MethodParameter;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.support.WebDataBinderFactory;
import org.springframework.web.context.request.NativeWebRequest;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;
import org.springframework.web.method.support.ModelAndViewContainer;

@Component
public class CurrentUserIdArgumentResolver implements HandlerMethodArgumentResolver {

    private final IdentityApiService identityApiService;

    public CurrentUserIdArgumentResolver(IdentityApiService identityApiService) {
        this.identityApiService = identityApiService;
    }

    @Override
    public boolean supportsParameter(MethodParameter parameter) {
        boolean hasAnnotation = parameter.hasParameterAnnotation(CurrentUser.class);

        boolean isLongType =
                parameter.getParameterType() == long.class
                        || parameter.getParameterType() == Long.class;

        return hasAnnotation && isLongType;
    }

    @Override
    public Object resolveArgument(
            @NonNull MethodParameter parameter,
            ModelAndViewContainer mavContainer,
            @NonNull NativeWebRequest webRequest,
            WebDataBinderFactory binderFactory
    ) {
        return this.identityApiService.currentUserAccount()
                .map(CurrentUserApiModel::userAccountId)
                .orElseThrow(() -> new CurrentUserNotAuthenticatedException(
                        "Пользователь должен быть авторизован в системе"
                ));
    }
}
