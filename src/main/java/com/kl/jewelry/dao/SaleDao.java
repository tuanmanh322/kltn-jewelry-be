package com.kl.jewelry.dao;

import com.kl.jewelry.dto.SaleSearchDTO;

public interface SaleDao extends BaseDAO {

    void searchSale(SaleSearchDTO dto);
}
