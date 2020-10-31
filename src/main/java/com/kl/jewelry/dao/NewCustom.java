package com.kl.jewelry.dao;

import com.kl.jewelry.dto.NewSearchDTO;
import com.kl.jewelry.model.New;

import java.util.List;

public interface NewCustom {
    List<New> getIndex();


    void searchNew(NewSearchDTO dto);
}
