package com.chainsys.yarnmanufacturingprocess.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.yarnmanufacturingprocess.compositekey.SupplierCottonCompositeKey;
import com.chainsys.yarnmanufacturingprocess.model.Customer;
import com.chainsys.yarnmanufacturingprocess.model.Invoice;
import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;
import com.chainsys.yarnmanufacturingprocess.model.YarnStock;
import com.chainsys.yarnmanufacturingprocess.service.SupplierCottonService;
import com.chainsys.yarnmanufacturingprocess.service.SupplierService;

@Controller
@RequestMapping("/suppliercotton")
public class SupplierCottonController {
	@Autowired
	SupplierCottonService supplierCottonService;
	@Autowired
	SupplierService supplierService;

	@GetMapping("/list")
	public String getAllSupplierCottons(Model model) {
		List<SupplierCotton> supplierCottonList = supplierCottonService.getAllSupplierCottons();
		model.addAttribute("allsuppliercottons", supplierCottonList);
		return "list-suppliercottons";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		SupplierCotton theSupplierCotton = new SupplierCotton();
		model.addAttribute("addsuppliercotton", theSupplierCotton);
		return "add-suppliercotton-form";
	}

	@PostMapping("/add")
	public String addNewSupplierCotton(@ModelAttribute("addsuppliercotton") SupplierCotton theSupplierCotton) {
		supplierCottonService.save(theSupplierCotton);
		return "redirect:/suppliercotton/list";
	}

	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "suppliercotton-modify-form";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(int supplierId, int cottonId, Model model) {
		SupplierCottonCompositeKey supplierCottonCompositeKey = new SupplierCottonCompositeKey(supplierId, cottonId);
		Optional<SupplierCotton> theSupplierCotton = supplierCottonService.findById(supplierCottonCompositeKey);
		model.addAttribute("updatesuppliercotton", theSupplierCotton);
		return "update-suppliercotton-form";
	}

	@PostMapping("/update")
	public String updateSupplierCotton(@ModelAttribute("updatesuppliercotton") SupplierCotton theSupplierCotton) {
		supplierCottonService.save(theSupplierCotton);
		return "redirect:/suppliercotton/list";
	}

	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "suppliercotton-delete-form";
	}

	@GetMapping("/deletesuppliercotton")
	public String deleteSupplierCotton(int supplierId,int cottonId, Model model) {
		SupplierCottonCompositeKey supplierCottonCompositeKey = new SupplierCottonCompositeKey(supplierId, cottonId);
		supplierCottonService.deleteById(supplierCottonCompositeKey);
		return "redirect:/suppliercotton/list";
	}

	@GetMapping("/findform")
	public String showFindForm() {
		return "fetch-suppliercotton-form";
	}

	@GetMapping("/findsuppliercottonbyid")
	public String findSupplierCotton(int supplierId, int cottonId, Model model) {
		SupplierCottonCompositeKey supplierCottonCompositeKey = new SupplierCottonCompositeKey(supplierId, cottonId);
		Optional<SupplierCotton> theSupplierCotton = supplierCottonService.findById(supplierCottonCompositeKey);
		model.addAttribute("findsuppliercottonbyid", theSupplierCotton);
		return "find-suppliercotton-by-id-form";
	}

	 @GetMapping("/getsuppliercotton")
	    public String getSupplierCottonById(@RequestParam("id")int id, Model model) {
	    	Supplier theSupplier = supplierService.findById(id);
	        model.addAttribute("fetchSupplierById", theSupplier);
	    	List<SupplierCotton> theSupplierCotton = supplierCottonService.getSuppliers(id);
	        model.addAttribute("allsuppliercottons", theSupplierCotton);
	        return "list-suppliercotton-by-supplier-id-form";
	    }


}
