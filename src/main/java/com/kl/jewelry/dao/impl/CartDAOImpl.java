package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.CartDAO;
import com.kl.jewelry.dto.CartDetailDTO;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import java.util.*;

@Repository
public class CartDAOImpl extends AbstractDAO implements CartDAO {
    @Override
    public List<CartDetailDTO> listByUser(Long userid) {
        StringBuilder sb= new StringBuilder();
        Map<String,Object> pa = new HashMap<>();
        sb.append(" SELECT ca.id as id, ca.quantity as quantity, p.name as name, p.price as price, p.image_product as image FROM jewelry.cart as ca LEFT JOIN jewelry.product as p on ca.id_product = p.id");
        sb.append(" where 1= 1");
        sb.append(" and ca.id_user =:p_user");
        pa.put("p_user",userid);
        return namedParameterJdbcTemplate().query(sb.toString(),pa, BeanPropertyRowMapper.newInstance(CartDetailDTO.class));
    }

    @Override
    public List<CartDetailDTO> listSellInDay() {
        StringBuilder sb= new StringBuilder();
        Map<String,Object> pa = new HashMap<>();
        sb.append(" SELECT ca.id as id, ca.quantity as quantity, p.name as name, p.price as price, p.image_product as image, u.first_name as firstName, u.last_name as lastName FROM jewelry.cart as ca LEFT JOIN jewelry.product as p on ca.id_product = p.id  left join user as u on u.id = ca.id_user");
        sb.append(" where 1= 1");
        sb.append(" and DAY(SYSDATE()) = DAY(ca.create_date) ");
//        pa.put("p_user",userid);
        return namedParameterJdbcTemplate().query(sb.toString(),pa, BeanPropertyRowMapper.newInstance(CartDetailDTO.class));
    }


}
