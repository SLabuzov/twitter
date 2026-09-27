package dev.simpleapp.twitter.common.i18n;

public interface MessageProvider {
    String getMessage(String code, Object... args);
}
