package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.ProductCustom;
import com.kl.jewelry.model.Product;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class ProductCustomImpl extends AbstractDAO  implements ProductCustom {
    @Override
    public List<Product> getAllIndex() {
        return getSession().createQuery("SELECT  p from Product p order by p.createdDate DESC ").setMaxResults(8).getResultList();
    }
}
