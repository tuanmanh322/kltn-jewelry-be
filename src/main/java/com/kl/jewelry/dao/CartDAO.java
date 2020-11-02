package com.kl.jewelry.dao;

import com.kl.jewelry.dto.CartDetailDTO;

import java.util.List;

public interface CartDAO extends BaseDAO {
    List<CartDetailDTO> listByUser(Long userid);
}
