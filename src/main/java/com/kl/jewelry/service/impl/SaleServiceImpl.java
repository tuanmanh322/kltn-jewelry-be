package com.kl.jewelry.service.impl;

import com.kl.jewelry.model.Sale;
import com.kl.jewelry.repository.SaleRepository;
import com.kl.jewelry.service.SaleService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Repository
public class SaleServiceImpl implements SaleService {
    private final SaleRepository saleRepository;

    private final ModelMapper modelMapper;

    public SaleServiceImpl(SaleRepository saleRepository, ModelMapper modelMapper) {
        this.saleRepository = saleRepository;
        this.modelMapper = modelMapper;
    }

    @Override
    public void add(Sale sale) {

    }

    @Override
    public Sale getById(Long id) {
        return null;
    }

    @Override
    public List<Sale> getAll() {
        return saleRepository.findAll();
    }

    @Override
    public void delete(Long id) {

    }

    @Override
    public void edit(Sale sale) {

    }
}
