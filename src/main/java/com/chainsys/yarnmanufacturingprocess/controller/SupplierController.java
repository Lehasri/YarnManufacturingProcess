package com.chainsys.yarnmanufacturingprocess.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.yarnmanufacturingprocess.model.Customer;
import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.model.SupplierLogin;
import com.chainsys.yarnmanufacturingprocess.service.SupplierLoginService;
import com.chainsys.yarnmanufacturingprocess.service.SupplierService;

@Controller
@RequestMapping("/supplier")
public class SupplierController {
	private static final String REDIRECT_PAGE = "redirect:/supplier/list";
	
	@Autowired
	SupplierService supplierService;
	
	@GetMapping("/list")
	public String getAllSuppliers(Model model) {
		List<Supplier> supplierList = supplierService.getAllSuppliers();
		model.addAttribute("allsuppliers", supplierList);
		return "list-suppliers";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Supplier theSupplier = new Supplier();
		model.addAttribute("addsupplier", theSupplier);
		return "add-supplier-form";
	}

	@PostMapping("/add")
	public String addNewSuppliers(@Valid @ModelAttribute("addsupplier") Supplier theSupplier,Errors error) {
		if(error.hasErrors())
		{
			return "add-supplier-form";
		}
		supplierService.save(theSupplier);
		return REDIRECT_PAGE;
	}

	@GetMapping("/fetchform")
	public String showForm() {
		return "supplier-modify-form";
	}
	@GetMapping("/updateform")
	public String showUpdateForm( int id, Model model) {
		Supplier theSupplier=supplierService.findById(id);
		model.addAttribute("updatesupplierA", theSupplier);
		return "update-supplier-form";
	}

	@PostMapping("/update")
	public String updateSuppliers(@ModelAttribute("updatesupplierA") Supplier theSupplier,Model model,Errors error) {
		if(error.hasErrors())
		{
			return "Update-supplier-form";
		}
		supplierService.save(theSupplier);
		return REDIRECT_PAGE;
	}
	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "supplier-delete-form";
	}
	@GetMapping("/deletesupplier")
	public String deleteSuppliers( int id) {
		supplierService.deleteById(id);
		return "redirect:/supplier/list";
	}
	@GetMapping("/findform")
	public String showFindForm() {
		return "fetch-supplier-form";
	}

	@GetMapping("/findsupplierbyId")
	public String findSupplierById(int id, Model model) {
		Supplier theSupplier = supplierService.findById(id);
		model.addAttribute("findsupplierbyid", theSupplier);
		return "find-supplier-by-id-form";
	}
	@GetMapping("/mypreviousprofileform")
	public String showMyProfileForm() {
		return "myprofile";
	}
	@GetMapping("/loginsupplier")
	public String loginForm(Model model) {
		SupplierLogin login = new SupplierLogin ();
		model.addAttribute("log",login);
		return "login";
	}

	@GetMapping("/cottonindex")
	public String cottonForm(Model model) {
		return "cotton";
	}
	@GetMapping("/myProfileindex")
	public String myProfileForm(Model model) {
		return "myprofile";
	}
	@GetMapping("/myindexprevious")
	public String myIndexForm(Model model) {
		return "index";
	}
	@GetMapping("/myindexpreviouslogin")
	public String myLoginIndexForm(Model model) {
		return "login";
	}

	@GetMapping("/myindexpreviouscotton")
	public String myCottonIndexForm(Model model) {
		return "cotton";
	}
	@GetMapping("/myindexpreviousfetch")
	public String myIndexPreviousFetch(Model model) {
		return "fetch-cotton-suppliercotton-form";
	}
	@GetMapping("/supplierlist")
	public String supplierList(Model model) {
		List<Supplier> supplierList = supplierService.getAllSuppliers();
		model.addAttribute("allsuppliers", supplierList);
		return "list-suppliers";
	}
	
}
