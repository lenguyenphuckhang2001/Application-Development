package com.greenwich.storeowner;

import com.greenwich.storeowner.domain.User;
import com.greenwich.storeowner.domain.security.Role;
import com.greenwich.storeowner.domain.security.UserRole;
import com.greenwich.storeowner.service.UserService;
import com.greenwich.storeowner.utility.SecurityUtility;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.HashSet;
import java.util.Set;

@SpringBootApplication
public class StoreOwnerApplication implements CommandLineRunner {

    @Autowired
    private UserService userService;

    public static void main(String[] args) {
        SpringApplication.run(StoreOwnerApplication.class, args);
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
        role1.setName("ROLE_STORE_OWNER");
        userRoles.add(new UserRole(user1, role1));

        userService.createUser(user1, userRoles);
    }
}
