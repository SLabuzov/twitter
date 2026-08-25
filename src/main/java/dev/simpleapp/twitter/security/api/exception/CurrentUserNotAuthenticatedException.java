package dev.simpleapp.twitter.security.api.exception;

import dev.simpleapp.twitter.common.exception.TwitterException;

/**
 * Бросается, когда систему запрашивает текущий пользователь,
 * но его идентификация не удалась.
 */
public class CurrentUserNotAuthenticatedException extends TwitterException {

    public CurrentUserNotAuthenticatedException(String message) {
        super(message);
    }
}
