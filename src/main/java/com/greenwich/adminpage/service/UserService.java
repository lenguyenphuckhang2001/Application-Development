package com.greenwich.adminpage.service;

import com.greenwich.adminpage.domain.User;
import com.greenwich.adminpage.domain.security.UserRole;

import java.util.List;
import java.util.Set;

public interface UserService {
    void createUser(User user, Set<UserRole> userRoles) throws Exception;

    User save(User user);

    User findById(Long id);

    List<User> findALl();

    void disableUser(Long userId);
}
