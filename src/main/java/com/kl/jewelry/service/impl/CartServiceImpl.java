package com.kl.jewelry.service.impl;

import com.kl.jewelry.dto.CartDTO;
import com.kl.jewelry.model.Cart;
import com.kl.jewelry.model.CartOrder;
import com.kl.jewelry.model.Product;
import com.kl.jewelry.repository.CartOrderRepository;
import com.kl.jewelry.repository.CartRepository;
import com.kl.jewelry.repository.ProductRepository;
import com.kl.jewelry.security.SecurityUtils;
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

    private final CartOrderRepository cartOrderRepository;

    private final ProductRepository productRepository;

    public CartServiceImpl(CartRepository cartRepository, ModelMapper modelMapper, FileStorageService fileStorageService, CartOrderRepository cartOrderRepository, ProductRepository productRepository) {
        this.cartRepository = cartRepository;
        this.modelMapper = modelMapper;
        this.fileStorageService = fileStorageService;
        this.cartOrderRepository = cartOrderRepository;
        this.productRepository = productRepository;
    }

    @Override
    public void add(Cart cart) {
        Cart c = new Cart();
        c = modelMapper.map(cart, Cart.class);
        if (SecurityUtils.getCurrentUserIdLogin() != null) {
            c.setIdUser(SecurityUtils.getCurrentUserIdLogin());
        }
        cartRepository.save(c);

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

    @Override
    public void addCheckout(CartDTO cartDTO) {
        Cart cart = new Cart();
        if (SecurityUtils.getCurrentUserIdLogin() != null) {
            cart.setIdUser(SecurityUtils.getCurrentUserIdLogin());
        }
        cart.setQuantity(cartDTO.getQuantity());
        cart.setIdProduct(cartDTO.getIdProduct());
        cartRepository.save(cart);
        Product product = productRepository.getOne(cart.getIdProduct());
        if (product.getSellCount() != null){
            product.setSellCount(product.getSellCount() + 1);
        }else{
            product.setSellCount(1);
        }
        product.setTotalItem(product.getTotalItem() -1);
        productRepository.save(product);
        CartOrder cartOrder = new CartOrder();
        cartOrder.setIdCart(cart.getId());
        cartOrder.setIdOrder(cartDTO.getIdOrder());
        cartOrderRepository.save(cartOrder);
    }
}
