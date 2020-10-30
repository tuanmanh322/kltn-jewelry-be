package com.kl.jewelry.controller;

import com.kl.jewelry.dto.NewDTO;
import com.kl.jewelry.model.New;
import com.kl.jewelry.service.NewService;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/news")
public class NewRest {
    private final NewService newService;

    public NewRest(NewService newService) {
        this.newService = newService;
    }

    @GetMapping("/index")
    public ResponseEntity<List<New>> getINdex() {
        return new ResponseEntity<>(newService.getNewIndex(), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addNeW(@RequestBody NewDTO newDTO){
        newService.addNew(newDTO);
        return ResponseEntity.ok().build();
    }
    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> delete(@PathVariable("id")Long id){
        newService.delete(id);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<New> getDetail(@PathVariable("id")Long id){
        return ResponseEntity.ok(newService.getById(id));
    }
}