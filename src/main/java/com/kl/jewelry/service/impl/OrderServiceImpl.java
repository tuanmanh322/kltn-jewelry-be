package com.kl.jewelry.service.impl;

import com.kl.jewelry.model.Order;
import com.kl.jewelry.repository.OrderRepository;
import com.kl.jewelry.service.Orderervice;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class OrderServiceImpl implements Orderervice {
    private final OrderRepository orderRepository;

    private final ModelMapper modelMapper;

    public OrderServiceImpl(OrderRepository orderRepository, ModelMapper modelMapper) {
        this.orderRepository = orderRepository;
        this.modelMapper = modelMapper;
    }

    @Override
    public void add(Order order) {
        orderRepository.save(order);
    }

    @Override
    public Order getById(Long id) {
        return orderRepository.getOne(id);
    }

    @Override
    public List<Order> getAll() {
        return orderRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        orderRepository.deleteById(id);
    }

    @Override
    public void edit(Order order) {
        Optional<Order> trade = orderRepository.findById(order.getId());
        if (trade.isPresent()) {
            Order t = trade.get();
            t = modelMapper.map(t, Order.class);
            orderRepository.save(t);
        }
    }
}
