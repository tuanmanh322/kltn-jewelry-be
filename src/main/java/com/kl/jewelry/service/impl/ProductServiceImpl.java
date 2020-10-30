package com.kl.jewelry.service.impl;

import com.kl.jewelry.dao.ProductCustom;
import com.kl.jewelry.dto.*;
import com.kl.jewelry.model.Category;
import com.kl.jewelry.model.Color;
import com.kl.jewelry.model.Product;
import com.kl.jewelry.model.Trademark;
import com.kl.jewelry.repository.CategoryRepository;
import com.kl.jewelry.repository.ColorRepository;
import com.kl.jewelry.repository.ProductRepository;
import com.kl.jewelry.repository.TrademarkRepository;
import com.kl.jewelry.service.FileStorageService;
import com.kl.jewelry.service.ProductService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class ProductServiceImpl implements ProductService {
    private final ProductRepository productRepository;

    private final ModelMapper modelMapper;

    private final ProductCustom productCustom;

    private final ColorRepository colorRepository;

    private final TrademarkRepository trademarkRepository;

    private final CategoryRepository categoryRepository;

    private final FileStorageService fileStoreService;

    public ProductServiceImpl(ProductRepository productRepository, ModelMapper modelMapper, ProductCustom productCustom, ColorRepository colorRepository, TrademarkRepository trademarkRepository, CategoryRepository categoryRepository, FileStorageService fileStoreService) {
        this.productRepository = productRepository;
        this.modelMapper = modelMapper;
        this.productCustom = productCustom;
        this.colorRepository = colorRepository;
        this.trademarkRepository = trademarkRepository;
        this.categoryRepository = categoryRepository;
        this.fileStoreService = fileStoreService;
    }

    @Override
    public List<Product> getAllIndex() {
        return productCustom.getAllIndex();
    }

    @Override
    public ProductDetailDTO findByDetail(Long id) {
        Product product  = productRepository.getOne(id);
        ProductDetailDTO dto = modelMapper.map(product, ProductDetailDTO.class);

        if (product.getIdCategory() != null){
            Category category = categoryRepository.getOne(product.getIdCategory());
            dto.setCategoryName(category.getName());
        }
        if (product.getIdColor() !=null){
            Color color = colorRepository.getOne(product.getIdColor());
            dto.setColorName(color.getName());
        }
        if (product.getIdMark() != null){
            Trademark trademark = trademarkRepository.getOne(product.getIdMark());
            dto.setMarkName(trademark.getNameProduct());
        }
        return dto;
    }

    @Override
    public void addNewProduct(ProductDTO productDTO) {
        Product  product = modelMapper.map(productDTO, Product.class);
        if (productDTO.getImageFile() != null){
            try {
                product.setImageProduct(fileStoreService.storeFile(productDTO.getImageFile()));
            }catch (IOException ignored){

            }
        }
        product.setCreatedDate(new Date());
        productRepository.save(product);
    }

    @Override
    public void delete(Long id) {
        productRepository.deleteById(id);
    }

    @Override
    public List<Product> getRelativeProduct(Long idCategory, Long idColor) {
        return productRepository.findByIdCategoryAndIdColor(idCategory,idColor);
    }

    @Override
    public List<ProductListSaleDTO> getAllIndexSale() {
        return productCustom.getAllIndexSale();
    }

    @Override
    public void productSearchDto(ProductSearchDTO dto) {
        productCustom.searchProduct(dto);
    }


}