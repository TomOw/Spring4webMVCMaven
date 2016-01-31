package com.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by tomaszowczarczyk on 31.01.2016.
 */

@Controller
public class LoginControler {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/oginfailed", method = RequestMethod.GET)
    public String loginerr(Model model) {
        model.addAttribute("error", "true");
        return "login";
    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(Model model) {
        return "login";
    }
}
