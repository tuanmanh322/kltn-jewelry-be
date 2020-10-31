package com.kl.jewelry.dao;

import com.kl.jewelry.dto.OrderSearchDTO;

public interface OrderDAO extends BaseDAO {
    void searchOrder(OrderSearchDTO dto);
}
