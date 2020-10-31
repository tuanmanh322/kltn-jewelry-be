package com.kl.jewelry.controller;

import com.kl.jewelry.dto.SaleSearchDTO;
import com.kl.jewelry.model.Sale;
import com.kl.jewelry.service.SaleService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/sale")
public class SaleRest {
    private final Logger log = LoggerFactory.getLogger(SaleRest.class);

    private final SaleService saleService;

    public SaleRest(SaleService saleService) {
        this.saleService = saleService;
    }


    @GetMapping("/all")
    public ResponseEntity<List<Sale>> getAll() {

        return new ResponseEntity<>(saleService.getAll(), HttpStatus.OK);
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<Sale> getById(@PathVariable("id") Long id) {
        return new ResponseEntity<>(saleService.getById(id), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addNew(@RequestBody Sale color) {
        saleService.add(color);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PutMapping("/edit")
    public ResponseEntity<Void> edit(@RequestBody Sale color) {
        saleService.edit(color);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteId(@PathVariable("id") Long id) {
        saleService.delete(id);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/search")
    public ResponseEntity<SaleSearchDTO> userSearchDTOResponseEntity(@RequestBody SaleSearchDTO dto) {
        log.info("Start rest to userSearchDTOResponseEntity :{}", dto);
        saleService.search(dto);
        return new ResponseEntity<>(dto, HttpStatus.OK);
    }
}
