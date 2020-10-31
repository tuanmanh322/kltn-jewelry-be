package com.kl.jewelry.service;

import com.kl.jewelry.dto.*;
import com.kl.jewelry.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAllIndex();

    ProductDetailDTO findByDetail(Long id);

    void addNewProduct(ProductDTO productDTO);

    void delete(Long id);

    List<Product> getRelativeProduct(Long idCategory, Long idColor);

    List<ProductListSaleDTO> getAllIndexSale();

    List<ProductListSaleDTO> getAllRelative(ProductListSaleDTO dto);

    void productSearchDto(ProductSearchDTO dto);
}
