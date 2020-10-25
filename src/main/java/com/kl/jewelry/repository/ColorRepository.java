package com.kl.jewelry.repository;

import com.kl.jewelry.model.Color;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface ColorRepository extends JpaRepository<Color, Long>, JpaSpecificationExecutor<Color> {

}