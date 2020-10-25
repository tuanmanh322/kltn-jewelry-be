package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PasswordChange {

    private String oldPassword;

    private String newPassword;

}
