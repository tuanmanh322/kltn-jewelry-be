package com.kl.jewelry.repository;

import com.kl.jewelry.model.ProductMapColor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface ProductMapColorRepository extends JpaRepository<ProductMapColor, Long>, JpaSpecificationExecutor<ProductMapColor> {

}