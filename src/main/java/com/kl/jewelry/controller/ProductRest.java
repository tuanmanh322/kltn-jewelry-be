package com.kl.jewelry.controller;

import com.kl.jewelry.dto.ProductDTO;
import com.kl.jewelry.dto.ProductDetailDTO;
import com.kl.jewelry.dto.ProductListDetailDTO;
import com.kl.jewelry.dto.ProductListSaleDTO;
import com.kl.jewelry.model.Product;
import com.kl.jewelry.service.ProductService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/product")
public class ProductRest {
    private final ProductService productService;

    public ProductRest(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/index")
    public ResponseEntity<List<Product>> getAllIndex() {
        return new ResponseEntity<>(productService.getAllIndex(), HttpStatus.OK);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteProduct(@PathVariable("id") Long id) {
        productService.delete(id);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<ProductDetailDTO> getDetail(@PathVariable("id") Long id) {
        return new ResponseEntity<>(productService.findByDetail(id), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addNew(@RequestBody ProductDTO productDTO) {
        productService.addNewProduct(productDTO);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/relative/{idCate}/{idColor}")
    public ResponseEntity<List<Product>> getRelative(@PathVariable("idCate") Long idCate, @PathVariable("idColor") Long idColor) {
        return new ResponseEntity<>(productService.getRelativeProduct(idCate,idColor),HttpStatus.OK);
    }

    @GetMapping("/index-sale")
    public ResponseEntity<List<ProductListSaleDTO>> getAllIndexSale() {
        return new ResponseEntity<>(productService.getAllIndexSale(), HttpStatus.OK);
    }
}
