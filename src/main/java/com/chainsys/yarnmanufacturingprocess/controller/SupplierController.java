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
		model.addAttribute("addsupplier", theSupplier);
		return "add-supplier-form";
	}

	@PostMapping("/add")
	public String addNewSuppliers(@Valid @ModelAttribute("addsupplier") Supplier theSupplier,Errors error,Model model) {
		try {
			supplierService.save(theSupplier);
			model.addAttribute("result","Added Successfully");
			return "add-supplier-form";
		}
		catch(Exception err) {
			model.addAttribute("message","Added Successfully");
			return "add-supplier-form";
		}
	}
	
//	  @GetMapping("/myprofileindex") public String showCottonIndex() 
//	  { 
//		  return "myprofile"; 
//		  }
	 
	@GetMapping("/updateform")
	public String showUpdateForm(HttpServletRequest request,@RequestParam("id") int id, Model model) {
		Supplier theSupplier = supplierService.findById(id);
		HttpSession session = request.getSession();
		int supplierId =(int)session.getAttribute("Id");
		System.out.println(supplierId);
		theSupplier.setSupplierId(supplierId);
		model.addAttribute("updatesupplier", theSupplier);
		return "update-supplier-form";
	}

	@PostMapping("/updatesuppliers")
	public String updateSuppliers(@ModelAttribute("updatesupplier") Supplier supplier,Errors errors) {
		if(errors.hasErrors()) {
			return "update-supplier-form";
		}
		supplierService.save(supplier);
		return "redirect:/supplierlogin/loginsupplier";
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

	@PostMapping("/checkuserlogin")
    public String checkingAccess(@ModelAttribute("log") Supplier supplier,Model model,HttpSession session) {
		Supplier log = supplierService.getEmailIdUserPassword(supplier.getEmailId(), supplier.getUserPassword());
        if (log!= null){
        	session.setAttribute("Id", supplier.getSupplierId());
        	System.out.println(log.getSupplierId());
        	return "redirect:/supplier/cottonindex";
        } else {
        
            return "redirect:/supplier/loginsupplier";
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
	
	
}
