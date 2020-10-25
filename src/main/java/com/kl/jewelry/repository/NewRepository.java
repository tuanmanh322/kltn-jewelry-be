package com.kl.jewelry.repository;

import com.kl.jewelry.model.New;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface NewRepository extends JpaRepository<New, Long>, JpaSpecificationExecutor<New> {

}