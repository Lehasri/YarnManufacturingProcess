package com.chainsys.yarnmanufacturingprocess.controller;


	import java.util.List;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestMapping;
	import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.yarnmanufacturingprocess.compositekey.SupplierCottonDetail;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;
    import com.chainsys.yarnmanufacturingprocess.service.SupplierCottonService;


	@Controller
	@RequestMapping("/suppliercotton")
	public class SupplierCottonController {
		@Autowired
		SupplierCottonService supplierCottonService;
	    @GetMapping("/list")
		public String getAllSupplierCottons(Model model) {
			List<SupplierCotton> supplierCottonList = supplierCottonService.getAllSupplierCottons();
			model.addAttribute("allsuppliercottons",supplierCottonList);
			return "list-suppliercottons";
		}
	    @GetMapping("/addform")
	    public String showAddForm(Model model)
	    {
	    	SupplierCotton theSupplierCotton=new SupplierCotton();
	    	model.addAttribute("addsuppliercotton",theSupplierCotton);
	    	return "add-suppliercotton-form";
	    }
	    @PostMapping("/add")
		public String addNewSupplierCotton(@ModelAttribute("addsuppliercotton") SupplierCotton theSupplierCotton) {
	    	supplierCottonService.save(theSupplierCotton);
	    	return "redirect:/suppliercotton/list";
		}
	    @GetMapping("/updateform")
	    public String showUpdateForm(@RequestParam("suppliercottonid") int id,Model model)
	    {
	    	SupplierCotton theSupplierCotton=supplierCottonService.findById(id);
	    	model.addAttribute("updatesuppliercotton",theSupplierCotton);
	    	return "update-suppliercotton-form";
	    }
	    @PostMapping("/update")
		public String updateSupplierCotton(@ModelAttribute("updatesuppliercotton") SupplierCotton theSupplierCotton) {
	    	supplierCottonService.save(theSupplierCotton);
	    	return "redirect:/suppliercotton/list";
		}
	    @GetMapping("/deletesuppliercotton")
		public String deleteSupplierCotton(@RequestParam("suppliercottonid") int id) {
	    	supplierCottonService.deleteById(id);
			return "redirect:/suppliercotton/list";
		}
	    @GetMapping("/findsuppliercottonbyid")
		public String findSupplierCottonById(@RequestParam("suppliercottonid") int id,Model model) {
	    	SupplierCottonDetail supplierCottonDetail = new SupplierCottonDetail(id,id);
	    	SupplierCotton theSupplierCotton=supplierCottonService.findById(id);
	    	model.addAttribute("findsuppliercottonbyid",theSupplierCotton);
	    	return "find-suppliercotton-by-id-form";
		}
}
