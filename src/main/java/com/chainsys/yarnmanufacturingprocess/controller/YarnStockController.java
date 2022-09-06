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

import com.chainsys.yarnmanufacturingprocess.model.YarnStock;
import com.chainsys.yarnmanufacturingprocess.service.CustomerService;
import com.chainsys.yarnmanufacturingprocess.service.YarnStockService;

@Controller
@RequestMapping("/yarnstock")
public class YarnStockController {
	private static final String REDIRECT_PAGE = "redirect:/yarnstock/list";

	@Autowired
	YarnStockService yarnStockService;

	@Autowired
	CustomerService customerService;

	@GetMapping("/list")
	public String getAllYarnStocks(Model model) {
		List<YarnStock> yarnstockList = yarnStockService.getAllYarnStocks();
		model.addAttribute("allyarnstocks", yarnstockList);
		return "list-yarnstocks";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		YarnStock theYarnStock = new YarnStock();
		model.addAttribute("addyarnstock", theYarnStock);
		return "add-yarnstock-form";
	}

	@PostMapping("/add")
	public String addNewYarnStocks(@Valid @ModelAttribute("addyarnstock") YarnStock theYarnStock, Errors error) {
		theYarnStock.setProductionDate();
		if (error.hasErrors()) {
			return "add-yarnstock-form";
		}

		yarnStockService.save(theYarnStock);
		return REDIRECT_PAGE;
	}

	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "yarnstock-modify-form";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		YarnStock theYarnStock = yarnStockService.findById(id);
		model.addAttribute("updateyarnstock", theYarnStock);
		return "update-yarnstock-form";
	}

	@PostMapping("/update")
	public String updateYarnStocks(@ModelAttribute("updateyarnstock") YarnStock theYarnStock, Errors error) {
		if (error.hasErrors()) {
			return "update-yarnstock-form";
		}
		yarnStockService.save(theYarnStock);
		return REDIRECT_PAGE;
	}

	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "yarnstock-delete-form";
	}

	@GetMapping("/deleteyarnstock")
	public String deleteYarnStocks(int id) {
		yarnStockService.deleteById(id);
		return REDIRECT_PAGE;
	}

	@GetMapping("/findform")
	public String showFindForm() {
		return "fetch-yarnstock-form";
	}

	@GetMapping("/findyarnstockbyid")
	public String findYarnStockById(int id, Model model) {
		YarnStock theYarnStock = yarnStockService.findById(id);
		model.addAttribute("findyarnstockbyid", theYarnStock);
		return "find-yarnstock-by-id-form";
	}

	@GetMapping("/status")
	public String getAllStatus(Model model) {
		YarnStock yarnStatus = yarnStockService.yarnGetByStatus("Ready","Blue","Macrame cord");
		model.addAttribute("yarn", yarnStatus);
		return "findcolor";
	}
	@GetMapping("/statusred")
	public String getAllStatusRed(Model model) {
		YarnStock yarnStatus = yarnStockService.yarnGetByStatus("Ready","Red","3-Ply");
		model.addAttribute("yarn", yarnStatus);
		return "findcolor";
	}
	@GetMapping("/statuspurple")
	public String getAllStatusWhite(Model model) {
		YarnStock yarnStatus = yarnStockService.yarnGetByStatus("Ready","Purple","4-Ply");
		model.addAttribute("yarn", yarnStatus);
		return "findcolor";
	}
	@GetMapping("/statuswhite")
	public String getAllStatusPink(Model model) {
		YarnStock yarnStatus = yarnStockService.yarnGetByStatus("Ready","White","2-Ply");
		model.addAttribute("yarn", yarnStatus);
		return "findcolor";
	}
	@GetMapping("/yarnlist")
	public String yarnList(Model model) {
		List<YarnStock> yarnstockList = yarnStockService.getAllYarnStocks();
		model.addAttribute("allyarnstocks", yarnstockList);
		return "list-yarnstocks";
	}
}
