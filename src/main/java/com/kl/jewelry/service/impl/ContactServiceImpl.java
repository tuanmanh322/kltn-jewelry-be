package com.kl.jewelry.service.impl;

import com.kl.jewelry.dao.ContactDAO;
import com.kl.jewelry.dto.ContactDTO;
import com.kl.jewelry.dto.ContactSearchDTO;
import com.kl.jewelry.model.Contact;
import com.kl.jewelry.repository.ContactRepository;
import com.kl.jewelry.service.ContactService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ContactServiceImpl implements ContactService {
    private final ContactRepository contactRepository;

    private final ModelMapper modelMapper;

    private final ContactDAO contactDAO;

    public ContactServiceImpl(ContactRepository contactRepository, ModelMapper modelMapper, ContactDAO contactDAO) {
        this.contactRepository = contactRepository;
        this.modelMapper = modelMapper;
        this.contactDAO = contactDAO;
    }

    @Override
    public void AddContact(ContactDTO dto) {
        Contact contact = modelMapper.map(dto, Contact.class);
        contactRepository.save(contact);
    }

    @Override
    public void searchContact(ContactSearchDTO contactSearchDTO) {
        contactDAO.searchContact(contactSearchDTO);
    }

    @Override
    public void delete(Long id) {
        contactRepository.deleteById(id);
    }
}
