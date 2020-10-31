package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.ColorDAO;
import com.kl.jewelry.dto.ColorDTO;
import com.kl.jewelry.dto.ColorSearchDTO;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class ColorDAOImpl extends AbstractDAO implements ColorDAO {
    @Override
    public void searchColor(ColorSearchDTO dto) {
        final StringBuilder sb= new StringBuilder();
        Map<String,Object> pa = new HashMap<>();
        sb.append(" select s.id as id  , s.name as name  ");
        sb.append(" from jewelry.color as s ");
        sb.append(" where 1 = 1");
        sb.append(" order by s.id ");
        searchAndCountTotal(dto, sb.toString(), pa, ColorDTO.class);
    }
}
