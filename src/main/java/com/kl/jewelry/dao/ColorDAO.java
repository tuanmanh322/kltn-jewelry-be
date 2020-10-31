package com.kl.jewelry.dao;

import com.kl.jewelry.dto.ColorSearchDTO;

public interface ColorDAO extends BaseDAO {
    void searchColor(ColorSearchDTO dto);
}
