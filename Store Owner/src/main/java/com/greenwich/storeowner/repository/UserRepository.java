package com.greenwich.storeowner.repository;

import com.greenwich.storeowner.domain.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {
    User findByUsername(String username);
}
