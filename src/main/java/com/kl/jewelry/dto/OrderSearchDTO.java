package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderSearchDTO extends BaseSearch {
    private String hoten;

    private String phone;
}
