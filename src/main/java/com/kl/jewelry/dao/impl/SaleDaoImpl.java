package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.SaleDao;
import com.kl.jewelry.dto.SaleDTO;
import com.kl.jewelry.dto.SaleSearchDTO;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class SaleDaoImpl extends AbstractDAO implements SaleDao {
    @Override
    public void searchSale(SaleSearchDTO dto) {
        final StringBuilder sb= new StringBuilder();
        Map<String,Object> pa = new HashMap<>();
        sb.append(" select s.id as id, s.description as description , s.name as name, s.code as code ");
        sb.append(" from jewelry.sale as s ");
        sb.append(" where 1 = 1");
        sb.append(" order by s.id ");
        searchAndCountTotal(dto, sb.toString(), pa, SaleDTO.class);
    }
}
