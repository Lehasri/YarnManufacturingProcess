package com.chainsys.yarnmanufacturingprocess.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.model.SupplierLogin;
import com.chainsys.yarnmanufacturingprocess.service.SupplierLoginService;
import com.chainsys.yarnmanufacturingprocess.service.SupplierService;

@Controller
@RequestMapping("/supplier")
public class SupplierController {
	@Autowired
	SupplierService supplierService;
	
	@Autowired
	SupplierLoginService supplierLoginService;


	@GetMapping("/list")
	public String getAllSuppliers(Model model) {
		List<Supplier> supplierList = supplierService.getAllSuppliers();
		model.addAttribute("allsuppliers", supplierList);
		return "list-suppliers";
	}
	
	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Supplier theSupplier = new Supplier();
		theSupplier.setSupplierId(supplierService.getNextValue());
		model.addAttribute("addsupplier", theSupplier);
		return "add-supplier-form";
	}

	@PostMapping("/add")
	public String addNewSuppliers(@ModelAttribute("addsupplier") Supplier theSupplier) {
		supplierService.save(theSupplier);
		return "myprofile";
	}
	
//	  @GetMapping("/myprofileindex") public String showCottonIndex() 
//	  { 
//		  return "myprofile"; 
//		  }
	 
	
	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "supplier-modify-form";
	}
	@GetMapping("/updateform")
	public String showUpdateForm( int id, Model model) {
		Supplier theSupplier = supplierService.findById(id);
		model.addAttribute("updatesupplier", theSupplier);
		return "update-supplier-form";
	}

	@PostMapping("/update")
	public String updateSuppliers(@Valid@ModelAttribute("updatesupplier") Supplier theSupplier,Errors errors) {
		if(errors.hasErrors()) {
			return "update-supplier-form";
		}
		supplierService.save(theSupplier);
		return "myprofile";
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

	@GetMapping("/findsupplierbyid")
	public String findSupplierById(int id, Model model) {
		Supplier theSupplier = supplierService.findById(id);
		model.addAttribute("findsupplierbyid", theSupplier);
		return "find-supplier-by-id-form";
	}

}
