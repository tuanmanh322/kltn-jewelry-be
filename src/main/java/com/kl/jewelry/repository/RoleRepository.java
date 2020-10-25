package com.kl.jewelry.repository;

import com.kl.jewelry.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

public interface RoleRepository extends JpaRepository<Role, Long>, JpaSpecificationExecutor<Role> {
    Role findByCodeAndCodeGroup(int roleType ,String codeGroup);
}