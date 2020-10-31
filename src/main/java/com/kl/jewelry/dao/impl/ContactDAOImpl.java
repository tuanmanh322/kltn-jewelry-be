package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.ContactDAO;
import com.kl.jewelry.dto.ContactDTO;
import com.kl.jewelry.dto.ContactSearchDTO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class ContactDAOImpl extends AbstractDAO implements ContactDAO {
    @Override
    public void searchContact(ContactSearchDTO contactSearchDTO) {
        final StringBuilder sb= new StringBuilder();
        Map<String,Object> pa = new HashMap<>();
        sb.append(" select s.id as id, s.content as content , s.name as name ,s.email as email, s.phone as phone ");
        sb.append(" from jewelry.contact as s ");
        sb.append(" where 1 = 1");
        sb.append(" order by s.id ");
        searchAndCountTotal(contactSearchDTO, sb.toString(), pa, ContactDTO.class);
    }
}
