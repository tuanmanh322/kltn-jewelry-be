package com.kl.jewelry.controller;

import com.kl.jewelry.dto.CartDTO;
import com.kl.jewelry.model.Cart;
import com.kl.jewelry.service.CartService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/cart")
public class CartRest {
    private final CartService cartService;

    public CartRest(CartService cartService) {
        this.cartService = cartService;
    }

    @GetMapping("/all")
    public ResponseEntity<List<Cart>> getAll(){

        return new ResponseEntity<>(cartService.getAll(), HttpStatus.OK);
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<Cart> getById(@PathVariable("id")Long id){
        return new ResponseEntity<>(cartService.getById(id), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addNew(@RequestBody Cart color){
        cartService.add(color);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("/add-checkout")
    public ResponseEntity<Void> addNew(@RequestBody CartDTO cartDTO){
        cartService.addCheckout(cartDTO);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PutMapping("/edit")
    public ResponseEntity<Void> edit(@RequestBody Cart color){
        cartService.edit(color);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteId(@PathVariable("id")Long id){
        cartService.delete(id);
        return ResponseEntity.ok().build();
    }
}
