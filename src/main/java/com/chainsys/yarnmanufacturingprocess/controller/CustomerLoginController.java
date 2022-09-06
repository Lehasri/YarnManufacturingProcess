package com.chainsys.yarnmanufacturingprocess.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.yarnmanufacturingprocess.model.CustomerLogin;
import com.chainsys.yarnmanufacturingprocess.service.CustomerLoginService;

@Controller
@RequestMapping("/customerlogin")
public class CustomerLoginController {
	@Autowired
	CustomerLoginService customerLoginService;
	@GetMapping("/addform")
	public String addForm(Model model) {
		CustomerLogin theCustomerLogin = new CustomerLogin();
		model.addAttribute("addcustomerlogin", theCustomerLogin);
		return "add-customer-login-form";
	}

	@PostMapping("/add")
	public String addNewCustomer(@ModelAttribute("addcustomerlogin") CustomerLogin theCustomerLogin) {
		customerLoginService.save(theCustomerLogin);
		
		return "redirect:/customerlogin/customerindex";
	}
	
	@GetMapping("/logincustomer")
	public String loginForm(Model model) {
		CustomerLogin login = new CustomerLogin ();
		model.addAttribute("log",login);
		return "customerlogin";
	}
	@GetMapping("/customerindex")
	public String ccustomerIndex() {
		
		return "customer";
	}
	@PostMapping("/checkuserlogin")
    public String checkingAccess(@ModelAttribute("log") CustomerLogin customerLogin,Model model) {
		CustomerLogin log = customerLoginService.getEmailIdUserPassword(customerLogin.getEmailId(), customerLogin.getUserPassword());
        if (log!= null){

        	return "redirect:/customerlogin/customerindex";
        } else {
        
            return "redirect:/customerlogin/logincustomer";
        }
    }
	@GetMapping("/myProfileindex")
	public String myProfileForm(Model model) {
		return "myprofilecustomer";
	}
	@GetMapping("/myindexpreviouslogin")
	public String myLoginIndexForm(Model model) {
		return "customerlogin";
	}
}
