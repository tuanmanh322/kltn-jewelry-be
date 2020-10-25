package com.kl.jewelry.service.impl;

import com.kl.jewelry.dao.NewCustom;
import com.kl.jewelry.dto.NewDTO;
import com.kl.jewelry.model.New;
import com.kl.jewelry.repository.NewRepository;
import com.kl.jewelry.service.FileStorageService;
import com.kl.jewelry.service.NewService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.List;

@Service
@Transactional
public class NewServiceImpl implements NewService {
    private final NewCustom newCustom;

    private final NewRepository newRepository;

    private final ModelMapper modelMapper;

    private final FileStorageService fileStoreService;

    public NewServiceImpl(NewCustom newCustom, NewRepository newRepository, ModelMapper modelMapper, FileStorageService fileStoreService) {
        this.newCustom = newCustom;
        this.newRepository = newRepository;
        this.modelMapper = modelMapper;
        this.fileStoreService = fileStoreService;
    }

    @Override
    public List<New> getNewIndex() {
        return newCustom.getIndex();
    }

    @Override
    public void addNew(NewDTO newDTO) {
        New aNew  = modelMapper.map(newDTO, New.class);
        if (newDTO.getFile() != null){
            try {
                aNew.setImage(fileStoreService.storeFile(newDTO.getFile()));
            }catch (IOException ignore){

            }
        }
        newRepository.save(aNew);
    }

    @Override
    public void delete(Long id) {
        newRepository.deleteById(id);
    }

    @Override
    public New getById(Long id) {
        return newRepository.findById(id).get();
    }
}
