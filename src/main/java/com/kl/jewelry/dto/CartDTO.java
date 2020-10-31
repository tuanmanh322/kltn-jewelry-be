package com.kl.jewelry.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CartDTO {
    private Long id;

    private Long idUser;

    private Integer quantity;

    private Long idProduct;

    private Long idOrder;
}
