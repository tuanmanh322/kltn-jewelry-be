package com.kl.jewelry.controller;

import com.kl.jewelry.model.Color;
import com.kl.jewelry.service.ColorService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/color")
public class ColorRest {

    private final ColorService colorService;

    public ColorRest(ColorService colorService) {
        this.colorService = colorService;
    }

    @GetMapping("/all")
    public ResponseEntity<List<Color>> getAll(){

        return new ResponseEntity<>(colorService.getAll(), HttpStatus.OK);
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<Color> getById(@PathVariable("id")Long id){
        return new ResponseEntity<>(colorService.getById(id), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addNew(@RequestBody Color color){
        colorService.add(color);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PutMapping("/edit")
    public ResponseEntity<Void> edit(@RequestBody Color color){
        colorService.edit(color);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteId(@PathVariable("id")Long id){
        colorService.delete(id);
        return ResponseEntity.ok().build();
    }
}
