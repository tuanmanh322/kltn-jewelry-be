package com.kl.jewelry.dao.impl;

import com.kl.jewelry.dao.ProductCustom;
import com.kl.jewelry.dto.ProductListDetailDTO;
import com.kl.jewelry.dto.ProductListSaleDTO;
import com.kl.jewelry.model.Product;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.persistence.TypedQuery;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class ProductCustomImpl extends AbstractDAO  implements ProductCustom {
    @Override
    public List<Product> getAllIndex() {
        return getSession().createQuery("SELECT  p from Product p order by p.createdDate DESC ").setMaxResults(8).getResultList();
    }

    @Override
    public List<ProductListSaleDTO> getAllIndexSale() {
        StringBuilder sb = new StringBuilder();
        Map<String,Object> parameters= new HashMap<>();
        sb.append(" SELECT p.id as id, p.name as name, p.ma_sp as maSp, p.image_product as imageProduct, p.price as price, p.sell_count as  ");
        sb.append(" sellCount, sale.`name` as saleName, sale.code as codeSale ");
        sb.append(" from jewelry.product as p left join jewelry.sale as sale on p.id_sale = sale.id ");
        sb.append(" WHERE p.id_sale is not null  ");
        sb.append(" ORDER BY p.created_date DESC ");
//        sb.append(" SELECT p.id as id, p.name as name, p.maSp as maSp, p.imageProduct as imageProduct, p.price as price, p.sellCount as  ");
//        sb.append(" sellCount, sale.name as saleName ");
//        sb.append(" from Product as p left join Sale as sale on p.idSale = sale.id ");
//        sb.append(" WHERE p.idSale is not null  ");
//        sb.append(" ORDER BY p.createdDate DESC ");
//        sb.append(" select new ");
//        sb.append(ProductListSaleDTO.class.getName());
//        sb.append(" ( p.id,p.name, p.imageProduct,p.price,p.sellCount,sale.name)   ");
//        sb.append(" from Product as p left join Sale as sale on p.idSale = sale.id ");
//        sb.append(" WHERE p.idSale is not null  ");
//        sb.append(" ORDER BY p.createdDate DESC ");
//        TypedQuery<ProductListSaleDTO> query = getSession().createQuery(sb.toString(),ProductListSaleDTO.class);
//        query.setMaxResults(10);
//        return query.getResultList();
        ((JdbcTemplate)namedParameterJdbcTemplate().getJdbcOperations()).setMaxRows(10);
        return namedParameterJdbcTemplate().query(sb.toString(), parameters, BeanPropertyRowMapper.newInstance(ProductListSaleDTO.class));
    }
}
