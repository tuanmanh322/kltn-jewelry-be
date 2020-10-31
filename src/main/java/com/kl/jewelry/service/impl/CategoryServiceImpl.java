package com.kl.jewelry.service.impl;

import com.kl.jewelry.dao.CategoryCustom;
import com.kl.jewelry.dto.CategorySearchDTO;
import com.kl.jewelry.model.Category;
import com.kl.jewelry.repository.CategoryRepository;
import com.kl.jewelry.service.CategoryService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CategoryServiceImpl implements CategoryService {
    private final CategoryRepository categoryRepository;

    private final CategoryCustom categoryCustom;

    private final ModelMapper modelMapper;

    public CategoryServiceImpl(CategoryRepository categoryRepository, CategoryCustom categoryCustom, ModelMapper modelMapper) {
        this.categoryRepository = categoryRepository;
        this.categoryCustom = categoryCustom;
        this.modelMapper = modelMapper;
    }

    @Override
    public void add(Category category) {
        categoryRepository.save(category);
    }

    @Override
    public Category getById(Long id) {
        return categoryRepository.getOne(id);
    }

    @Override
    public List<Category> getAll() {
        return categoryRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        categoryRepository.deleteById(id);
    }

    @Override
    public void edit(Category category) {

    }

    @Override
    public void search(CategorySearchDTO dto) {
        categoryCustom.searchCate(dto);
    }
}
