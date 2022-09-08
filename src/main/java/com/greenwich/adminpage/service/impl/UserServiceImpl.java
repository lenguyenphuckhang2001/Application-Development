package com.greenwich.adminpage.service.impl;

import com.greenwich.adminpage.domain.User;
import com.greenwich.adminpage.domain.security.UserRole;
import com.greenwich.adminpage.repository.RoleRepository;
import com.greenwich.adminpage.repository.UserRepository;
import com.greenwich.adminpage.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.EntityNotFoundException;
import java.util.List;
import java.util.Set;

@Service
public class UserServiceImpl implements UserService {

    private static final Logger LOG = LoggerFactory.getLogger(UserService.class);

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public void createUser(User user, Set<UserRole> userRoles) {
        User localUser = userRepository.findByUsername(user.getUsername());

        if (localUser != null) {
            LOG.info("user {} already exists. Nothing will be done.", user.getUsername());
        } else {
            for (UserRole ur : userRoles) {
                roleRepository.save(ur.getRole());
            }

            user.getUserRoles().addAll(userRoles);

            localUser = userRepository.save(user);
        }

    }

    @Override
    public User save(User user) {
        return userRepository.save(user);
    }

    @Override
    public User findById(Long id) {
        return userRepository.findById(id).orElseThrow(null);
    }

    @Override
    public List<User> findALl() {
        return (List<User>) userRepository.findAll();
    }

    @Override
    public void disableUser(Long userId) {
        User user = userRepository.findById(userId).orElseThrow(EntityNotFoundException::new);
        user.setEnabled(false);
        userRepository.save(user);
    }

}

