package com.greenwich.storeowner.service;

import com.greenwich.storeowner.domain.User;
import com.greenwich.storeowner.domain.security.UserRole;

import java.util.Set;

public interface UserService {
    User createUser(User user, Set<UserRole> userRoles) throws Exception;

    User save(User user);
}
