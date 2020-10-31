package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.CategoryCustom;
import com.kl.jewelry.dto.CategoryDTO;
import com.kl.jewelry.dto.CategorySearchDTO;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class CategoryCustomImpl extends AbstractDAO implements CategoryCustom {
    @Override
    public void searchCate(CategorySearchDTO dto) {
        final StringBuilder sb= new StringBuilder();
        Map<String,Object> pa = new HashMap<>();
        sb.append(" select s.id as id, s.description as description , s.name as name  ");
        sb.append(" from jewelry.category as s ");
        sb.append(" where 1 = 1");
        sb.append(" order by s.id ");
        searchAndCountTotal(dto, sb.toString(), pa, CategoryDTO.class);
    }
}
