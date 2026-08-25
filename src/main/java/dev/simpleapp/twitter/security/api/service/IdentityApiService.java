package dev.simpleapp.twitter.security.api.service;

import dev.simpleapp.twitter.security.api.model.CurrentUserApiModel;
import java.util.Optional;

/**
 * Предоставляет доступ к данным аккаунта текущего пользователя.
 *
 * @deprecated Данный интерфейс устарел. Теперь текущего пользователя нужно получать через аннотацию.
 * Используйте аннотацию {@link dev.simpleapp.twitter.security.api.annotation.CurrentUser}
 * на уровне метода контроллера.
 */
@Deprecated
public interface IdentityApiService {
    Optional<CurrentUserApiModel> currentUserAccount();
}
