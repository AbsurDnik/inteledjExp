package com.example2.demo2.controller;

import com.example2.demo2.model.Role;
import com.example2.demo2.model.User;
import com.example2.demo2.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;

@Controller
public class RegistrationController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/registration")
    public String gerRegistrationPage(){
        return "registration";
    }
    @PostMapping("/registration")
    public String createNewUser(User user){
        User userFromDb = userRepository.findByUsername(user.getUsername());

        if (userFromDb != null) {
            return "registration";
        }
        user.setRoles(Collections.singleton(Role.USER));
        userRepository.save(user);
        return "redirect:/login";
    }
}
