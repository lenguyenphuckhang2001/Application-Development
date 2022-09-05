package com.greenwich.adminpage;

import com.greenwich.adminpage.domain.User;
import com.greenwich.adminpage.domain.security.Role;
import com.greenwich.adminpage.domain.security.UserRole;
import com.greenwich.adminpage.service.UserService;
import com.greenwich.adminpage.utility.SecurityUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.HashSet;
import java.util.Set;

@SpringBootApplication
public class AdminPageApplication {

    @Autowired
    private UserService userService;

    public static void main(String[] args) {
        SpringApplication.run(AdminPageApplication.class, args);
    }

    @Override
    public void run(String... args) throws Exception {
        User user1 = new User();
        user1.setUsername("storeowner");
        user1.setPassword(SecurityUtility.passwordEncoder().encode("123456"));
        user1.setEmail("storeowner@gmail.com");
        Set<UserRole> userRoles = new HashSet<>();
        Role role1 = new Role();
        role1.setRoleId(0);
        role1.setName("ROLE_ADMIN");
        userRoles.add(new UserRole(user1, role1));

        userService.createUser(user1, userRoles);
    }
}
