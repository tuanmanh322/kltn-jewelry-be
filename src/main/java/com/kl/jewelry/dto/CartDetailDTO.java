package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.math.BigDecimal;

@Getter
@Setter
@ToString
public class CartDetailDTO {
    private Long id;

    private Long idUser;

    private Integer quantity;

    private String name;

    private BigDecimal price;

    private String image;
}
