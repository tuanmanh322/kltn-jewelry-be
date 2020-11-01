package com.kl.jewelry.service.impl;

import com.kl.jewelry.dao.SaleDao;
import com.kl.jewelry.dto.SaleSearchDTO;
import com.kl.jewelry.model.Sale;
import com.kl.jewelry.repository.SaleRepository;
import com.kl.jewelry.service.SaleService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@Repository
public class SaleServiceImpl implements SaleService {
    private final SaleRepository saleRepository;

    private final ModelMapper modelMapper;

    private final SaleDao saleDao;

    public SaleServiceImpl(SaleRepository saleRepository, ModelMapper modelMapper, SaleDao saleDao) {
        this.saleRepository = saleRepository;
        this.modelMapper = modelMapper;
        this.saleDao = saleDao;
    }

    @Override
    public void add(Sale sale) {
        saleRepository.save(sale);
    }

    @Override
    public Sale getById(Long id) {
        return saleRepository.getOne(id);
    }

    @Override
    public List<Sale> getAll() {
        return saleRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        saleRepository.deleteById(id);
    }

    @Override
    public void edit(Sale sale) {
        Optional<Sale> trade = saleRepository.findById(sale.getId());
        if (trade.isPresent()) {
            Sale t = trade.get();
            t = modelMapper.map(sale, Sale.class);
            saleRepository.save(t);
        }
    }

    @Override
    public void search(SaleSearchDTO dto) {
        saleDao.searchSale(dto);
    }
}
