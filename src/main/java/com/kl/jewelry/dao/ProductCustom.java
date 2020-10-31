package com.kl.jewelry.dao;

import com.kl.jewelry.dto.ProductListSaleDTO;
import com.kl.jewelry.dto.ProductSearchDTO;
import com.kl.jewelry.model.Product;

import java.util.List;

public interface ProductCustom {
        List<Product> getAllIndex();

        List<ProductListSaleDTO> getAllIndexSale();

        List<ProductListSaleDTO> getAllSaleRelative(ProductListSaleDTO dto);

        void searchProduct(ProductSearchDTO dto);
}
