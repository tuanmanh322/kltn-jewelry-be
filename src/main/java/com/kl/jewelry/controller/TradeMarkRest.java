package com.kl.jewelry.controller;

import com.kl.jewelry.dto.TradeMarkSearchDTO;
import com.kl.jewelry.model.Trademark;
import com.kl.jewelry.service.MarkService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/trade")
public class TradeMarkRest {
    private final Logger log = LoggerFactory.getLogger(TradeMarkRest.class);

    private final MarkService markService;

    public TradeMarkRest(MarkService markService) {
        this.markService = markService;
    }

    @GetMapping("/all")
    public ResponseEntity<List<Trademark>> getAll(){

        return new ResponseEntity<>(markService.getAll(), HttpStatus.OK);
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<Trademark> getById(@PathVariable("id")Long id){
        return new ResponseEntity<>(markService.getById(id), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addNew(@RequestBody Trademark color){
        markService.add(color);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PutMapping("/edit")
    public ResponseEntity<Void> edit(@RequestBody Trademark color){
        markService.edit(color);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteId(@PathVariable("id")Long id){
        markService.delete(id);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/search")
    public ResponseEntity<TradeMarkSearchDTO> userSearchDTOResponseEntity(@RequestBody TradeMarkSearchDTO dto) {
        log.info("Start rest to userSearchDTOResponseEntity :{}", dto);
        markService.search(dto);
        return new ResponseEntity<>(dto, HttpStatus.OK);
    }
}
