package com.kl.jewelry.service;

import com.kl.jewelry.dto.CartDTO;
import com.kl.jewelry.model.Cart;

public interface CartService extends BaseService<Cart> {
    void addCheckout(CartDTO cartDTO);
}
