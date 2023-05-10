package com.example.controller;

import com.example.entity.Customer;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("customer")
public class CustomerController {
    @RequestMapping(value = {"/showForm","/","/index"},method = RequestMethod.GET)
    public String show(ModelMap model){
        model.addAttribute("customer",new Customer());
        return "/create";
    }

    @RequestMapping(value = "/addCustomer",method = RequestMethod.POST)
    public String create(@ModelAttribute("customer") Customer customer,Model model){
        model.addAttribute("id",customer.getId());
        model.addAttribute("name",customer.getId());
        model.addAttribute("customer",customer.getId());
        return "/index";
    }
}
