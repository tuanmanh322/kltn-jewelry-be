package com.kl.jewelry.service.impl;

import com.kl.jewelry.dao.ColorDAO;
import com.kl.jewelry.dto.ColorSearchDTO;
import com.kl.jewelry.model.Color;
import com.kl.jewelry.model.Trademark;
import com.kl.jewelry.repository.ColorRepository;
import com.kl.jewelry.service.ColorService;
import com.kl.jewelry.service.FileStorageService;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class ColorServiceImpl implements ColorService {
    private final ColorRepository colorRepository;

    private final ModelMapper modelMapper;

    private final ColorDAO colorDAO;

    private final FileStorageService fileStorageService;

    public ColorServiceImpl(ColorRepository colorRepository, ModelMapper modelMapper, ColorDAO colorDAO, FileStorageService fileStorageService) {
        this.colorRepository = colorRepository;
        this.modelMapper = modelMapper;
        this.colorDAO = colorDAO;
        this.fileStorageService = fileStorageService;
    }

    @Override
    public void add(Color color) {
        colorRepository.save(color);
    }

    @Override
    public Color getById(Long id) {
        return colorRepository.getOne(id);
    }

    @Override
    public List<Color> getAll() {
        return colorRepository.findAll();
    }

    @Override
    public void delete(Long id) {
        colorRepository.deleteById(id);
    }

    @Override
    public void edit(Color color) {
        Optional<Color> trade = colorRepository.findById(color.getId());
        if (trade.isPresent()) {
            Color t = trade.get();
            t = modelMapper.map(color, Color.class);
            colorRepository.save(t);
        }
    }

    @Override
    public void search(ColorSearchDTO dto) {
        colorDAO.searchColor(dto);
    }
}
