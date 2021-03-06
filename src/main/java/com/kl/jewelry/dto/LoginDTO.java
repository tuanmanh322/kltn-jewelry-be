package com.kl.jewelry.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginDTO {
    private String username;
    private String password;

    @JsonProperty
    private boolean rememberMe;
}
