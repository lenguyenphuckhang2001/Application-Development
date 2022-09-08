package com.greenwich.adminpage.controller;

import com.greenwich.adminpage.domain.User;
import com.greenwich.adminpage.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/userInfo")
    public String userInfo(@RequestParam("id") Long id, Model model) {
        User user = userService.findById(id);

        model.addAttribute("user", user);

        return "userInfo";
    }

    @RequestMapping("/userList")
    public String userList(Model model) {
        List<User> userList = userService.findALl();
        model.addAttribute("userList", userList);
        return "userList";
    }
}
