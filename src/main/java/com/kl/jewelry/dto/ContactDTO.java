package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
public class ContactDTO {
    private String content;

    private String email;

    private Long id;

    private String name;

    private String phone;
}
