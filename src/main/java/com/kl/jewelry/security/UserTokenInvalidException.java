package com.kl.jewelry.security;

import org.springframework.security.core.AuthenticationException;

public class UserTokenInvalidException extends AuthenticationException {
    public UserTokenInvalidException(String msg) {
        super(msg);
    }
}
