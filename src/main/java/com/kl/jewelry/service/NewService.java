package com.kl.jewelry.service;

import com.kl.jewelry.dto.NewDTO;
import com.kl.jewelry.model.New;

import java.util.List;

public interface NewService {
    List<New> getNewIndex();

    void addNew(NewDTO newDTO);

    void delete(Long id);

    New getById(Long id);
}
