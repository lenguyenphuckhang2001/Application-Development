package com.greenwich.adminpage.service;

import com.greenwich.adminpage.domain.User;
import com.greenwich.adminpage.domain.security.UserRole;

import java.util.Set;

public interface UserService {
    User createUser(User user, Set<UserRole> userRoles) throws Exception;

    User save(User user);
}
