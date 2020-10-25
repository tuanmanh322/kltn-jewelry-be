package com.kl.jewelry.controller;

import com.kl.jewelry.model.Sale;
import com.kl.jewelry.service.SaleService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/sale")
public class SaleRest {
    private final SaleService saleService;

    public SaleRest(SaleService saleService) {
        this.saleService = saleService;
    }


    @GetMapping("/all")
    public ResponseEntity<List<Sale>> getAll(){
        return new ResponseEntity<>(saleService.getAll(), HttpStatus.OK);
    }
}
