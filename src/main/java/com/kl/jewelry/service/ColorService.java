package com.kl.jewelry.service;

import com.kl.jewelry.dto.ColorSearchDTO;
import com.kl.jewelry.model.Color;

public interface ColorService extends BaseService<Color> {
    void search(ColorSearchDTO dto);
}
