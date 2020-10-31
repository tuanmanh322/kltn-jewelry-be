package com.kl.jewelry.repository;

import com.kl.jewelry.model.CartOrder;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface CartOrderRepository extends JpaRepository<CartOrder, Long>, JpaSpecificationExecutor<CartOrder> {

}