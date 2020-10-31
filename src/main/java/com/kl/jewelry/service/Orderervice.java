package com.kl.jewelry.service;

import com.kl.jewelry.dto.OrderModelDTO;
import com.kl.jewelry.dto.OrderSearchDTO;
import com.kl.jewelry.model.Order;

public interface Orderervice extends BaseService<Order> {
    OrderModelDTO addWithCart(Order order);

    void searchOrder(OrderSearchDTO dto);
}
