package com.kl.jewelry.controller;

import com.kl.jewelry.dto.OrderModelDTO;
import com.kl.jewelry.model.Order;
import com.kl.jewelry.service.Orderervice;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/order")
public class OrderRest {
    private final Orderervice orderervice;

    public OrderRest(Orderervice orderervice) {
        this.orderervice = orderervice;
    }

    @GetMapping("/all")
    public ResponseEntity<List<Order>> getAll() {

        return new ResponseEntity<>(orderervice.getAll(), HttpStatus.OK);
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<Order> getById(@PathVariable("id") Long id) {
        return new ResponseEntity<>(orderervice.getById(id), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addNew(@RequestBody Order color) {
        orderervice.add(color);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("/add-cart")
    public ResponseEntity<OrderModelDTO> addWithCart(@RequestBody Order color) {
        return new ResponseEntity<>(orderervice.addWithCart(color), HttpStatus.OK);
    }


    @PutMapping("/edit")
    public ResponseEntity<Void> edit(@RequestBody Order color) {
        orderervice.edit(color);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteId(@PathVariable("id") Long id) {
        orderervice.delete(id);
        return ResponseEntity.ok().build();
    }
}
