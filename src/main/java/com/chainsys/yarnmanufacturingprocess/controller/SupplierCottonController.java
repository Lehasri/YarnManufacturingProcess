package com.chainsys.yarnmanufacturingprocess.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.yarnmanufacturingprocess.compositekey.SupplierCottonCompositeKey;
import com.chainsys.yarnmanufacturingprocess.model.Cotton;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;
import com.chainsys.yarnmanufacturingprocess.service.CottonService;
import com.chainsys.yarnmanufacturingprocess.service.SupplierCottonService;
import com.chainsys.yarnmanufacturingprocess.service.SupplierService;

@Controller
@RequestMapping("/suppliercotton")
public class SupplierCottonController {
	@Autowired
	SupplierCottonService supplierCottonService;
	@Autowired
	SupplierService supplierService;
	@Autowired
	CottonService cottonService;

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
	public String addNewSupplierCotton(@ModelAttribute("addsuppliercotton") SupplierCotton theSc) {
		
		supplierCottonService.save(theSc);
		return "redirect:/suppliercotton/list";
	}

	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "suppliercotton-modify-form";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("supplierId")int supplierId, @RequestParam("cottonId") int cottonId, Model model) {
		SupplierCottonCompositeKey supplierCottonCompositeKey = new SupplierCottonCompositeKey(supplierId, cottonId);
		Optional<SupplierCotton> theSupplierCotton = supplierCottonService.findById(supplierCottonCompositeKey);
		model.addAttribute("updatesuppliercotton", theSupplierCotton);
		return "update-suppliercotton-form";
	}

	@PostMapping("/update")
	public String updateSupplierCotton(@ModelAttribute("updatesuppliercotton") SupplierCotton theSupplierCotton,Errors error) {
		if(error.hasErrors())
		{
			return "update-suppliercotton-form";
		}
		supplierCottonService.save(theSupplierCotton);
		return "redirect:/suppliercotton/list";
	}

	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "suppliercotton-delete-form";
	}

	@GetMapping("/deletesuppliercotton")
	public String deleteSupplierCotton(@RequestParam("supplierid")int supplierId,@RequestParam("supplierid") int cottonId, Model model) {
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
			/*
			 * Supplier theSupplier = supplierService.findById(id);
			 * model.addAttribute("fetchSupplierById", theSupplier);
			 */
	    	List<SupplierCotton> theSupplierCotton = supplierCottonService.getSuppliers(id);
	        model.addAttribute("allsuppliercottons", theSupplierCotton);
	        return "list-suppliercotton-by-supplier-id-form";
	    }
		@GetMapping("/findLeadform")
		public String showLeadForm() {
			return "fetch-cotton-suppliercotton-form";
		}

	 @GetMapping("/getcottondetails")
	    public String getCottonDetailsById(int id,Model model) {
		    SupplierCotton theSupplierCotton = supplierCottonService.findByCottonId(id);
	    	Cotton theCotton = cottonService.findById(theSupplierCotton.getCottonId());
	        model.addAttribute("fetchcottonbyid", theCotton);
	        model.addAttribute("findsuppliercotton", theSupplierCotton);
	        return "find-suppliercotton-by-cotton-id-form";
	    }
	 @GetMapping("/leadlist")
		public String showFindLeadListForm() {
			return "redirect:/suppliercotton/list";
		}
	
}
