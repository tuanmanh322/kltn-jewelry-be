package com.kl.jewelry.service;


import com.kl.jewelry.dto.CategorySearchDTO;
import com.kl.jewelry.model.Category;

public interface CategoryService extends BaseService<Category> {
    void search(CategorySearchDTO dto);
}
