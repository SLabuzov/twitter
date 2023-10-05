package dev.simpleapp.twitter.security.config;

import java.security.interfaces.RSAPrivateKey;
import java.security.interfaces.RSAPublicKey;

public record RsaKeys(RSAPublicKey publicKey, RSAPrivateKey privateKey) {
}
