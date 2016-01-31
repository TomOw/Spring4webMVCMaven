package com.store.controller;
import com.store.domain.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by tomaszowczarczyk on 25.01.2016.
 */
@Controller
public class HomeController {
    @RequestMapping(value = "/")
    public String home (Model model) {
        item x = new item(10,15);
        model.addAttribute("info", x.toString());
        return "test";
    }

    @RequestMapping(value = "/table")
    public String secondPage() {
        return "table";
    }
}
