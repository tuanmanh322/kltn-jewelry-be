package com.kl.jewelry.service;


import com.kl.jewelry.dto.ContactDTO;
import com.kl.jewelry.dto.ContactSearchDTO;

public interface ContactService {
    void AddContact(ContactDTO dto);

    void searchContact(ContactSearchDTO contactSearchDTO);

    void delete(Long id);
}
