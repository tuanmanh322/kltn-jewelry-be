package com.kl.jewelry.service;


import com.kl.jewelry.dto.ContactDTO;
import com.kl.jewelry.dto.ContactSearchDTO;
import com.kl.jewelry.model.Contact;

public interface ContactService extends BaseService<Contact> {
    void AddContact(ContactDTO dto);

    void searchContact(ContactSearchDTO contactSearchDTO);

    void delete(Long id);
}
