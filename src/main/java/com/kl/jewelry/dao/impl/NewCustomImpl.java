package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.NewCustom;
import com.kl.jewelry.dto.NewDTO;
import com.kl.jewelry.dto.NewSearchDTO;
import com.kl.jewelry.model.New;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class NewCustomImpl extends AbstractDAO implements NewCustom {


    @Override
    public List<New> getIndex() {
        return getSession().createQuery("select n from New n  order by n.createdDate").setMaxResults(4).getResultList();
    }

    @Override
    public void searchNew(NewSearchDTO dto) {
        final StringBuilder sb = new StringBuilder();
        Map<String, Object> pa = new HashMap<>();
        sb.append(" select n.id as id, n.content as content, n.thumbnails as thumbnails, n.created_date as createdDate,n.image as image, n.title as title ");
        sb.append(" from jewelry.new as n ");
        sb.append(" where 1 = 1 ");
        if (StringUtils.isNotBlank(dto.getTitle())) {
            sb.append(" and n.title like :p_title ");
            pa.put("p_title", "%" + dto.getTitle().trim() + "%");
        }
        sb.append(" order by n.created_date  desc ");
        searchAndCountTotal(dto, sb.toString(), pa, NewDTO.class);
    }
}
