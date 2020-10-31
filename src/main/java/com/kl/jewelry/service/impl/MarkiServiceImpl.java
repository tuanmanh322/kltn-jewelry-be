package com.kl.jewelry.service.impl;

import com.kl.jewelry.dao.TradeMarkDAO;
import com.kl.jewelry.dto.TradeMarkSearchDTO;
import com.kl.jewelry.model.Trademark;
import com.kl.jewelry.repository.TrademarkRepository;
import com.kl.jewelry.service.FileStorageService;
import com.kl.jewelry.service.MarkService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class MarkiServiceImpl implements MarkService {
    private final ModelMapper modelMapper;

    private final FileStorageService fileStorageService;

    private final TrademarkRepository trademarkRepository;

    private final TradeMarkDAO tradeMarkDAO;

    public MarkiServiceImpl(ModelMapper modelMapper, FileStorageService fileStorageService, TrademarkRepository trademarkRepository, TradeMarkDAO tradeMarkDAO) {
        this.modelMapper = modelMapper;
        this.fileStorageService = fileStorageService;
        this.trademarkRepository = trademarkRepository;
        this.tradeMarkDAO = tradeMarkDAO;
    }

    @Override
    public void add(Trademark trademark) {
        trademarkRepository.save(trademark);
    }

    @Override
    public Trademark getById(Long id) {
        return trademarkRepository.getOne(id);
    }

    @Override
    public List<Trademark> getAll() {
        return trademarkRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        trademarkRepository.deleteById(id);
    }

    @Override
    public void edit(Trademark trademark) {
        Optional<Trademark> trade = trademarkRepository.findById(trademark.getId());
        if (trade.isPresent()) {
            Trademark t = trade.get();
            t = modelMapper.map(t, Trademark.class);
            trademarkRepository.save(t);
        }

    }

    @Override
    public void search(TradeMarkSearchDTO dto) {
        tradeMarkDAO.searchMark(dto);
    }
}
