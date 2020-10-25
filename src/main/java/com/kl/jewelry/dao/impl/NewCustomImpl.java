package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.NewCustom;
import com.kl.jewelry.model.New;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NewCustomImpl extends AbstractDAO implements NewCustom {



    @Override
    public List<New> getIndex() {
        return getSession().createQuery("select n from New n  order by n.createdDate").setMaxResults(4).getResultList();
    }
}
