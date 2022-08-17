package com.chainsys.yarnmanufacturingprocess.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.model.SupplierLogin;
import com.chainsys.yarnmanufacturingprocess.service.SupplierLoginService;

@Controller
@RequestMapping("/supplierlogin")
public class SupplierLoginController {
	@Autowired
	SupplierLoginService supplierLoginService;
	@GetMapping("/addform")
	public String addForm(Model model) {
		SupplierLogin theSupplierLogin = new SupplierLogin();
		model.addAttribute("addsupplierlogin", theSupplierLogin);
		return "add-supplier-login-form";
	}

	@PostMapping("/add")
	public String addNewSupplier(@ModelAttribute("addsupplierlogin") SupplierLogin theSupplierLogin) {
		supplierLoginService.save(theSupplierLogin);
		
		return "cotton";
	}
	
	@GetMapping("/loginsupplier")
	public String loginForm(Model model) {
		SupplierLogin login = new SupplierLogin ();
		model.addAttribute("log",login);
		return "login";
	}

	@PostMapping("/checkuserlogin")
    public String checkingAccess(@ModelAttribute("log") SupplierLogin supplierLogin,Model model) {
		SupplierLogin log = supplierLoginService.getEmailIdUserPassword(supplierLogin.getEmailId(), supplierLogin.getUserPassword());
        if (log!= null){

        	return "redirect:/supplierlogin/cottonindex";
        } else {
        
            return "redirect:/supplierlogin/loginsupplier";
        }
    }
	@GetMapping("/cottonindex")
	public String cottonForm(Model model) {
		return "cotton";
	}
	@GetMapping("/myProfileindex")
	public String myProfileForm(Model model) {
		return "myprofile";
	}
	
	
}
