package com.store.controller;

import com.store.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by tomaszowczarczyk on 28.01.2016.
 */
@Controller
public class OrderController {

    @Autowired
    private OrderService orderService;

    @RequestMapping("/products/order/{id}/{n}")
    public String process(@PathVariable String id, @PathVariable int n){
        orderService.processOrder(id, n);
        return "redirect:/products";
    }
}
