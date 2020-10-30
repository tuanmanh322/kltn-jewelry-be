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

import java.util.List;
import java.util.Optional;

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
    public void add(Contact contact) {
        contactRepository.save(contact);
    }

    @Override
    public Contact getById(Long id) {
        return contactRepository.getOne(id);
    }

    @Override
    public List<Contact> getAll() {
        return contactRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        contactRepository.deleteById(id);
    }

    @Override
    public void edit(Contact contact) {
        Optional<Contact> trade = contactRepository.findById(contact.getId());
        if (trade.isPresent()) {
            Contact t = trade.get();
            t = modelMapper.map(t, Contact.class);
            contactRepository.save(t);
        }
    }
}
