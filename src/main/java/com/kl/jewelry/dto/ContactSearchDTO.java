package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ContactSearchDTO extends BaseSearch {
    private String email;

    private String phone;

    private String name;
}
