package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.TradeMarkDAO;
import com.kl.jewelry.dto.TradeMarkDTO;
import com.kl.jewelry.dto.TradeMarkSearchDTO;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class TradeMarkDAOImpl extends AbstractDAO implements TradeMarkDAO {
    @Override
    public void searchMark(TradeMarkSearchDTO dto) {
        final StringBuilder sb = new StringBuilder();
        Map<String, Object> pa = new HashMap<>();
        sb.append(" select s.id as id, s.description as description , s.name_product as nameProduct  ");
        sb.append(" from jewelry.trademark as s ");
        sb.append(" where 1 = 1");
        sb.append(" order by s.name_product ");
        searchAndCountTotal(dto, sb.toString(), pa, TradeMarkDTO.class);
    }
}
