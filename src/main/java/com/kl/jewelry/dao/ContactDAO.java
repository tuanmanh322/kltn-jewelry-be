package com.kl.jewelry.dao;


import com.kl.jewelry.dto.ContactSearchDTO;

import java.io.Serializable;

public interface ContactDAO extends Serializable,BaseDAO {

    void searchContact(ContactSearchDTO contactSearchDTO);
}
