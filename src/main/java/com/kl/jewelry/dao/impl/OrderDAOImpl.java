package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.OrderDAO;
import com.kl.jewelry.dto.OrderModelDTO;
import com.kl.jewelry.dto.OrderSearchDTO;
import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class OrderDAOImpl extends AbstractDAO implements OrderDAO {
    @Override
    public void searchOrder(OrderSearchDTO dto) {
        final StringBuilder sb= new StringBuilder();
        Map<String,Object> pa = new HashMap<>();
        sb.append(" select s.id as id, s.hoten as hoten , s.phone as phone, s.address as address, s.transfer_done as transferStatus, s.create_date as createDate, s.total_money as  totalMoney");
        sb.append(" from jewelry.order_product as s ");
        sb.append(" where 1 = 1");
        if (StringUtils.isNotBlank(dto.getHoten())){
            sb.append(" and s.hoten =:p_hotne");
            pa.put("p_hotne", "%" + dto.getHoten().trim() + "%");
        }
        if (StringUtils.isNotBlank(dto.getPhone())){
            sb.append(" and s.phone =:p_hsotne");
            pa.put("p_hsotne", "%" + dto.getPhone().trim() + "%");
        }
        sb.append(" order by s.create_date ");
        searchAndCountTotal(dto, sb.toString(), pa, OrderModelDTO.class);
    }
}
