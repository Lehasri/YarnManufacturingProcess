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

    import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.repository.SupplierRepository;
import com.chainsys.yarnmanufacturingprocess.service.SupplierService;

	@Controller
	@RequestMapping("/supplier")
	public class SupplierController {
		@Autowired
		SupplierService spservice;
	    @GetMapping("/list")
		public String getAllSuppliers(Model model) {
			List<Supplier> suplist = spservice.getallSuppliers();
			model.addAttribute("allsuppliers",suplist);
			return "list-suppliers";
		}
	    @GetMapping("/addform")
	    public String showAddForm(Model model)
	    {
	    	Supplier theSupplier=new Supplier();
	    	model.addAttribute("addsupplier",theSupplier);
	    	return "add-supplier-form";
	    }
	    @PostMapping("/add")
		public String addNewSuppliers(@ModelAttribute("addsupplier") Supplier thesupplier) {
	    	spservice.save(thesupplier);
	    	return "redirect:/supplier/list";
		}
	    @GetMapping("/updateform")
	    public String showUpdateForm(@RequestParam("supid") int id,Model model)
	    {
	    	Supplier theSupplier=spservice.findById(id);
	    	model.addAttribute("updatesupplier",theSupplier);
	    	return "update-supplier-form";
	    }
	    @PostMapping("/update")
		public String updateSuppliers(@ModelAttribute("updatesupplier") Supplier theSupplier) {
			spservice.save(theSupplier);
	    	return "redirect:/supplier/list";
		}
	    @GetMapping("/deletesupplier")
		public String deleteSuppliers(@RequestParam("supid") int id) {
	    	spservice.deleteById(id);
			return "redirect:/supplier/list";
		}
	    @GetMapping("/findSupplierById")
		public String findSupplierById(@RequestParam("supid") int id,Model model) {
	    	Supplier theSupplier=spservice.findById(id);
	    	model.addAttribute("findSupplierById",theSupplier);
	    	return "find-supplier-by-id-form";
		}
}
