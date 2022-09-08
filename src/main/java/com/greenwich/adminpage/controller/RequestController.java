package com.greenwich.adminpage.controller;

import com.greenwich.adminpage.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RequestController {

    @Autowired
    private UserService userService;

    @RequestMapping("/disable/{userId}")
    public void requestUser(@PathVariable Long userId) {
        userService.disableUser(userId);
    }
}
