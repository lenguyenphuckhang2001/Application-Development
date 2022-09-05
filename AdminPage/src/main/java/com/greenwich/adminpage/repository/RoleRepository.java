package com.greenwich.adminpage.repository;

import com.greenwich.adminpage.domain.security.Role;
import org.springframework.data.repository.CrudRepository;


public interface RoleRepository extends CrudRepository<Role, Long> {
    Role findByname(String name);
}
