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
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.yarnmanufacturingprocess.model.Cotton;
import com.chainsys.yarnmanufacturingprocess.model.Yarn;
import com.chainsys.yarnmanufacturingprocess.service.CottonService;
import com.chainsys.yarnmanufacturingprocess.service.YarnService;

@Controller
@RequestMapping("/yarn")
public class YarnController {
	private static final String REDIRECTPAGE = "redirect:/yarn/list"; 
	@Autowired
	YarnService yarnService;
	@Autowired
	CottonService cottonService;
	
	
	
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
	public String addNewYarns(@Valid@ModelAttribute("addyarn") Yarn theYarn,Errors error) {
		theYarn.setProductionDate();
		if(error.hasErrors())
		{
			return "add-yarn-form";
		}
		yarnService.save(theYarn);
		return REDIRECTPAGE;
	}
	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "yarn-modify-form";
	}
	

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("yarnid") int id, Model model) {
		Yarn theYarn = yarnService.findById(id);
		model.addAttribute("updateyarn", theYarn);
		return "update-yarn-form";
	}

	@PostMapping("/update")
	public String updateYarn(@Valid@ModelAttribute("updateyarn") Yarn theYarn,Errors error) {
		if(error.hasErrors())
		{
			return "update-yarn-form";
		}
		yarnService.save(theYarn);
		return REDIRECTPAGE;
	}
	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "yarn-delete-form";
	}


	@GetMapping("/deleteyarn")
	public String deleteYarn(@RequestParam("yarnid") int id) {
		yarnService.deleteById(id);
		return REDIRECTPAGE;
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
	
	@GetMapping("/findyarnform")
	public String showFindYarnForm() {
		return "fetch-cotton-yarn-form";
	}
	@GetMapping("/getcottonremarks")
    public String getCottonYarnById(@RequestParam("id")int id, Model model) {
    	Yarn theYarn = yarnService.fetchByCottonId(id);
    	Cotton theCotton = cottonService.findById(theYarn.getCottonId());
        model.addAttribute("yarndetail",theYarn);
        model.addAttribute("cottondetail", theCotton);
        return "find-remarks-by-cotton-id-form";
    }
	@GetMapping("/mypreviousyarnindex")
	public String myPreviousyarnIndex() {
		return "yarn";
	}
	
}
