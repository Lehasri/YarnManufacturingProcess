package com.chainsys.yarnmanufacturingprocess.controller;

import java.util.List;
import java.util.Optional;

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
import com.chainsys.yarnmanufacturingprocess.model.Cotton;
import com.chainsys.yarnmanufacturingprocess.model.Invoice;
import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;
import com.chainsys.yarnmanufacturingprocess.model.Yarn;
import com.chainsys.yarnmanufacturingprocess.service.CottonService;
import com.chainsys.yarnmanufacturingprocess.service.SupplierCottonService;
import com.chainsys.yarnmanufacturingprocess.service.YarnService;

@Controller
@RequestMapping("/cotton")
public class CottonController {
	@Autowired
	CottonService cottonService;
	@Autowired
	YarnService yarnService;
	@Autowired
	SupplierCottonService supplierCottonService;

	@GetMapping("/list")
	public String getAllCottons(Model model) {
		List<Cotton> cottonList = cottonService.getAllCottons();
		model.addAttribute("allcottons", cottonList);
		return "list-cottons";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Cotton theCotton = new Cotton();
		model.addAttribute("addcotton", theCotton);
		return "add-cotton-form";
	}

	@PostMapping("/add")
	public String addNewCottons(@Valid@ModelAttribute("addcotton") Cotton theCotton,Errors error) {
		if(error.hasErrors())
		{
			return "add-cotton-form";
		}
		cottonService.save(theCotton);
		return "redirect:/cotton/list";
	}
	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "cotton-modify-form";
	}
	

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("cottonid") int id, Model model) {
		Cotton theCotton = cottonService.findById(id);
		model.addAttribute("updatecotton", theCotton);
		return "update-cotton-form";
	}

	@PostMapping("/update")
	public String updateCotton(@ModelAttribute("updatecotton") Cotton theCotton,Errors error) {
		if(error.hasErrors())
		{
			return "update-cotton-form";
		}
		cottonService.save(theCotton);
		return "redirect:/cotton/list";
	}
	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "cotton-delete-form";
	}

	@GetMapping("/deletecotton")
	public String deleteCotton(@RequestParam("cottonid") int id) {
		cottonService.deleteById(id);
		return "redirect:/cotton/list";
	}
	@GetMapping("/findform")
	public String showFindForm() {
		return "fetch-cotton-form";
	}

	@GetMapping("/findcottonbyid")
	public String findCottonById(@RequestParam("cottonid") int id, Model model) {
		List<Cotton> cottonIdList = cottonService.getAllCottons();
        model.addAttribute("listAllCustomerId", cottonIdList);
		Cotton theCotton = cottonService.findById(id);
		model.addAttribute("findcottonbyid", theCotton);
		return "find-cotton-by-id-form";
	}
	@GetMapping("/findcottonform")
	public String FindForm() {
		return "fetch-cotton-yarn-	form";
	}
	
	 @GetMapping("/getcottonyarn")
	    public String getInvoiceOrdersByNo(@RequestParam("id")int id, Model model) {
	    	Cotton theCotton = cottonService.findById(id);
	        model.addAttribute("fetchcottonbyid", theCotton);
	    	List<Yarn> theYarn = yarnService.getYarn(id);
	        model.addAttribute("allyarns", theYarn);
	        return "find-cotton-yarn-by-id-form";
	    }
	 @GetMapping("/myindexpreviousupdatecotton")
		public String myUpdateCotonIndexForm(Model model) {
			return "redirect:/cotton/list";
		}
	 @GetMapping("/myindexpreviousfetch")
		public String myPreviousFetchIndexForm(Model model) {
			return "fetch-cotton-yarn-form";
		}
		 
}
