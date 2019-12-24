package com.kkyu.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.kkyu.service.PostsService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class WebController {

	PostsService postsService;

    @GetMapping("/")
    public String main(Model model) {
    	model.addAttribute("posts", postsService.findAllDesc());
        return "main";
    }
}