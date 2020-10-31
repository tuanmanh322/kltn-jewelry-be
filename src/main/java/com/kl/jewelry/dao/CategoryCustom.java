package com.kl.jewelry.dao;

import com.kl.jewelry.dto.CategorySearchDTO;

public interface CategoryCustom extends BaseDAO{
    void searchCate(CategorySearchDTO  dto);
}
