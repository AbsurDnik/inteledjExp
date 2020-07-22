package com.example2.demo2.controller;

import com.example2.demo2.model.User;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
    @GetMapping("/main")
    public String getMainPage(@AuthenticationPrincipal User user){
        return "main";
    }
}
