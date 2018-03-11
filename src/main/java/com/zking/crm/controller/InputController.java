package com.zking.crm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/input")
public class InputController {

    public InputController() {
        super();
    }

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

    @RequestMapping("/admin")
    public String admin() {
        return "admin";
    }

    @RequestMapping("/base")
    public String base() {
        return "base/dict";
    }


    @RequestMapping("/{dir}/{page}")
    public String forwarPage(@PathVariable String dir, @PathVariable String page) {
        String path = dir + "/" + page;
        return path;
    }
}
