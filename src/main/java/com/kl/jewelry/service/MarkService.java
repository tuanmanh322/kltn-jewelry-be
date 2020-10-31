package com.kl.jewelry.service;

import com.kl.jewelry.dto.TradeMarkSearchDTO;
import com.kl.jewelry.model.Trademark;

public interface MarkService extends BaseService<Trademark> {
    void search(TradeMarkSearchDTO dto);
}
