package com.greenwich.adminpage.repository;

import com.greenwich.adminpage.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {
    User findByUsername(String username);
}
