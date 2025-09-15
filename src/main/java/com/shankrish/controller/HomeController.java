package com.shankrish.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Model model) {
        model.addAttribute("message", "Welcome to Spring MVC!");
        model.addAttribute("timestamp", new java.util.Date());
        return "home";
    }

    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public String welcome(@RequestParam(name = "name", required = false, defaultValue = "Guest") String name,
                          Model model) {
        model.addAttribute("name", name);
        model.addAttribute("greeting", "Hello, " + name + "!");
        return "welcome";
    }

    @RequestMapping(value = "/about", method = RequestMethod.GET)
    public String about() {
        return "about";
    }

    // Add a catch-all mapping for undefined URLs
    @RequestMapping(value = "*", method = RequestMethod.GET)
    public String notFound() {
        return "404";
    }

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public String handle404() {
        return "404";
    }

}

