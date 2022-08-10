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

import com.chainsys.yarnmanufacturingprocess.model.Cotton;
import com.chainsys.yarnmanufacturingprocess.model.Customer;
import com.chainsys.yarnmanufacturingprocess.model.Invoice;
import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;
import com.chainsys.yarnmanufacturingprocess.model.Yarn;
import com.chainsys.yarnmanufacturingprocess.model.YarnStock;
import com.chainsys.yarnmanufacturingprocess.service.CottonService;
import com.chainsys.yarnmanufacturingprocess.service.CustomerService;
import com.chainsys.yarnmanufacturingprocess.service.YarnService;

@Controller
@RequestMapping("/yarn")
public class YarnController {
	@Autowired
	YarnService yarnService;
	
	
	@GetMapping("/list")
	public String getAllYarns(Model model) {
		List<Yarn> yarnList = yarnService.getAllYarns();
		model.addAttribute("allyarns", yarnList);
		return "list-yarns";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Yarn theYarn = new Yarn();
		model.addAttribute("addyarn", theYarn);
		return "add-yarn-form";
	}

	@PostMapping("/add")
	public String addNewYarns(@ModelAttribute("addyarn") Yarn theyarn) {
		yarnService.save(theyarn);
		return "redirect:/yarn/list";
	}
	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "yarn-modify-form";
	}
	

	@GetMapping("/updateform")
	public String showUpdateForm( int id, Model model) {
		Yarn theYarn = yarnService.findById(id);
		model.addAttribute("updateyarn", theYarn);
		return "update-yarn-form";
	}

	@PostMapping("/update")
	public String updateYarn(@ModelAttribute("updateyarn") Yarn theYarn) {
		yarnService.save(theYarn);
		return "redirect:/yarn/list";
	}
	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "yarn-delete-form";
	}


	@GetMapping("/deleteyarn")
	public String deleteYarn( int id) {
		yarnService.deleteById(id);
		return "redirect:/yarn/list";
	}
	@GetMapping("/findform")
	public String showFindForm() {
		return "fetch-yarn-form";
	}

	@GetMapping("/findyarnbyid")
	public String findYarnById( int id, Model model) {
		Yarn theYarn = yarnService.findById(id);
		model.addAttribute("findyarnbyid", theYarn);
		return "find-yarn-by-id-form";
	}
	
}
