package com.kl.jewelry.controller;

import com.kl.jewelry.dto.CategorySearchDTO;
import com.kl.jewelry.model.Category;
import com.kl.jewelry.service.CategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/category")
public class CategoryRest {

    private final Logger log = LoggerFactory.getLogger(CategoryRest.class);

    private final CategoryService categoryService;

    public CategoryRest(CategoryService categoryService) {
        this.categoryService = categoryService;
    }
    @GetMapping("/all")
    public ResponseEntity<List<Category>> getAll(){

        return new ResponseEntity<>(categoryService.getAll(), HttpStatus.OK);
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<Category> getById(@PathVariable("id")Long id){
        return new ResponseEntity<>(categoryService.getById(id), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addNew(@RequestBody Category color){
        categoryService.add(color);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PutMapping("/edit")
    public ResponseEntity<Void> edit(@RequestBody Category color){
        categoryService.edit(color);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteId(@PathVariable("id")Long id){
        categoryService.delete(id);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/search")
    public ResponseEntity<CategorySearchDTO> userSearchDTOResponseEntity(@RequestBody CategorySearchDTO dto) {
        log.info("Start rest to userSearchDTOResponseEntity :{}", dto);
        categoryService.search(dto);
        return new ResponseEntity<>(dto, HttpStatus.OK);
    }
}
