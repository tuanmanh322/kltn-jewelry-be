package com.kl.jewelry.controller;

import com.kl.jewelry.dto.ContactSearchDTO;
import com.kl.jewelry.model.Contact;
import com.kl.jewelry.service.ContactService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/contact")
public class ContactRest {
    private final Logger log = LoggerFactory.getLogger(ContactRest.class);

    private final ContactService contactService;

    public ContactRest(ContactService contactService) {
        this.contactService = contactService;
    }

    @GetMapping("/all")
    public ResponseEntity<List<Contact>> getAll(){

        return new ResponseEntity<>(contactService.getAll(), HttpStatus.OK);
    }

    @GetMapping("/detail/{id}")
    public ResponseEntity<Contact> getById(@PathVariable("id")Long id){
        return new ResponseEntity<>(contactService.getById(id), HttpStatus.OK);
    }

    @PostMapping("/add")
    public ResponseEntity<Void> addNew(@RequestBody Contact color){
        contactService.add(color);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PutMapping("/edit")
    public ResponseEntity<Void> edit(@RequestBody Contact color){
        contactService.edit(color);
        return ResponseEntity.ok().build();
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<Void> deleteId(@PathVariable("id")Long id){
        contactService.delete(id);
        return ResponseEntity.ok().build();
    }

    @PostMapping("/search")
    public ResponseEntity<ContactSearchDTO> userSearchDTOResponseEntity(@RequestBody ContactSearchDTO dto) {
        log.info("Start rest to userSearchDTOResponseEntity :{}", dto);
        contactService.searchContact(dto);
        return new ResponseEntity<>(dto, HttpStatus.OK);
    }
}
