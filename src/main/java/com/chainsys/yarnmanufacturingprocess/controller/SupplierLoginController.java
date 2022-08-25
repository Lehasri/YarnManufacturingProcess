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
	
	
}
