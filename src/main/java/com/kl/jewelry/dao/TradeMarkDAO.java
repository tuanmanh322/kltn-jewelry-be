package com.kl.jewelry.dao;

import com.kl.jewelry.dto.TradeMarkSearchDTO;

public interface TradeMarkDAO extends  BaseDAO{
    void searchMark(TradeMarkSearchDTO dto);
}
