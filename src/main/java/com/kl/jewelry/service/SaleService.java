package com.kl.jewelry.service;


import com.kl.jewelry.dto.SaleSearchDTO;
import com.kl.jewelry.model.Sale;

public interface SaleService extends BaseService<Sale> {
    void search(SaleSearchDTO dto);
}
