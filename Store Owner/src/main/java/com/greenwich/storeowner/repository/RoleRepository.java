package com.greenwich.storeowner.repository;

import com.greenwich.storeowner.domain.security.Role;
import org.springframework.data.repository.CrudRepository;


public interface RoleRepository extends CrudRepository<Role, Long> {
    Role findByname(String name);
}
