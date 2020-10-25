package com.kl.jewelry.service;

import com.kl.jewelry.dto.ProductDTO;
import com.kl.jewelry.dto.ProductDetailDTO;
import com.kl.jewelry.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> getAllIndex();

    ProductDetailDTO findByDetail(Long id);

    void addNewProduct(ProductDTO productDTO);

    void delete(Long id);

    List<Product> getRelativeProduct(Long idCategory, Long idColor);

}
