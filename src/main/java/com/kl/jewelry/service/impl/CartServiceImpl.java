package com.kl.jewelry.service.impl;

import com.kl.jewelry.model.Cart;
import com.kl.jewelry.repository.CartRepository;
import com.kl.jewelry.service.CartService;
import com.kl.jewelry.service.FileStorageService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class CartServiceImpl implements CartService {
    private final CartRepository cartRepository;

    private final ModelMapper modelMapper;

    private final FileStorageService fileStorageService;

    public CartServiceImpl(CartRepository cartRepository, ModelMapper modelMapper, FileStorageService fileStorageService) {
        this.cartRepository = cartRepository;
        this.modelMapper = modelMapper;
        this.fileStorageService = fileStorageService;
    }

    @Override
    public void add(Cart cart) {
        cartRepository.save(cart);
    }

    @Override
    public Cart getById(Long id) {
        return cartRepository.getOne(id);
    }

    @Override
    public List<Cart> getAll() {
        return cartRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        cartRepository.deleteById(id);
    }

    @Override
    public void edit(Cart cart) {
        Optional<Cart> trade = cartRepository.findById(cart.getId());
        if (trade.isPresent()) {
            Cart t = trade.get();
            t = modelMapper.map(t, Cart.class);
            cartRepository.save(t);
        }
    }
}
