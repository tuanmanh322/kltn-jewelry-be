package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Getter
@Setter
public class OrderModelDTO {
    private String address;

    private String hoten;

    private Long id;

    private String phone;

    private Boolean transferStatus;

    private LocalDateTime createDate;

    private Double totalMoney;
}
