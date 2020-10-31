package com.kl.jewelry.service.impl;

import com.kl.jewelry.dao.OrderDAO;
import com.kl.jewelry.dto.OrderModelDTO;
import com.kl.jewelry.dto.OrderSearchDTO;
import com.kl.jewelry.model.Order;
import com.kl.jewelry.repository.OrderRepository;
import com.kl.jewelry.security.SecurityUtils;
import com.kl.jewelry.service.Orderervice;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class OrderServiceImpl implements Orderervice {
    private final OrderRepository orderRepository;

    private final OrderDAO orderDAO;

    private final ModelMapper modelMapper;

    public OrderServiceImpl(OrderRepository orderRepository, OrderDAO orderDAO, ModelMapper modelMapper) {
        this.orderRepository = orderRepository;
        this.orderDAO = orderDAO;
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

    @Override
    public OrderModelDTO addWithCart(Order order) {
        Order o = new Order();
        o = modelMapper.map(order,Order.class);
        if (SecurityUtils.getCurrentUserIdLogin() != null){
            o.setIdUser(SecurityUtils.getCurrentUserIdLogin());
        }
        o.setCreateDate(LocalDateTime.now());
        o.setTransferStatus(false);
        o.setTotalMoney(order.getTotalMoney());
        orderRepository.save(o);
        OrderModelDTO dto = modelMapper.map(o, OrderModelDTO.class);
        return  dto;
    }

    @Override
    public void searchOrder(OrderSearchDTO dto) {
        orderDAO.searchOrder(dto);
    }
}
