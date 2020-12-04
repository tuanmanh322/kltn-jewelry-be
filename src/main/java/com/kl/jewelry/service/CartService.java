package com.kl.jewelry.service;

import com.kl.jewelry.dto.CartDTO;
import com.kl.jewelry.dto.CartDetailDTO;
import com.kl.jewelry.model.Cart;

import java.util.List;

public interface CartService extends BaseService<Cart> {
    void addCheckout(CartDTO cartDTO);

    List<CartDetailDTO> getAllByUser(Long useid);

    List<CartDetailDTO> getAllByStaff();
}
