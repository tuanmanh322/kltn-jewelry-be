package com.kl.jewelry.repository;

import com.kl.jewelry.model.Trademark;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface TrademarkRepository extends JpaRepository<Trademark, Long>, JpaSpecificationExecutor<Trademark> {

}