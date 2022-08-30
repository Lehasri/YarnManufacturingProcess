package com.chainsys.yarnmanufacturingprocess.controller;

import java.util.List;

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
	public String addNewYarnStocks(@Valid @ModelAttribute("addyarnstock") YarnStock theYarnStock,Errors error) {
		theYarnStock.setProductionDate();
		if(error.hasErrors())
		{
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
	public String showUpdateForm(@RequestParam("id")int id, Model model) {
		YarnStock theYarnStock = yarnStockService.findById(id);
		model.addAttribute("updateyarnstock", theYarnStock);
		return "update-yarnstock-form";
	}

	@PostMapping("/update")
	public String updateYarnStocks(@ModelAttribute("updateyarnstock") YarnStock theYarnStock,Errors error) {
		if(error.hasErrors())
		{
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
		List<YarnStock> yarnStatus = yarnStockService.yarnGetByStatus("Ready");
		model.addAttribute("allyarn", yarnStatus);
		return "list-yarnproduct";
	}
	/*
	 * @GetMapping("/color") public String getAllColor(Model model) { YarnStock
	 * yarnColor = yarnStockService.yarnGetByColor("Orange");
	 * model.addAttribute("yarncolor", yarnColor); return "findcolor"; }
	 * 
	 * @GetMapping("/pinkcolor") public String getPinkColor(Model model) { YarnStock
	 * yarnColor = yarnStockService.yarnGetByColor("Pink");
	 * model.addAttribute("yarncolor", yarnColor); return "findcolor"; }
	 * 
	 * @GetMapping("/bluecolor") public String getBlueColor(Model model) { YarnStock
	 * yarnColor = yarnStockService.yarnGetByColor("Blue");
	 * model.addAttribute("yarncolor", yarnColor); return "findcolor"; }
	 * 
	 * @GetMapping("/redcolor") public String getRedColor(Model model) { YarnStock
	 * yarnColor = yarnStockService.yarnGetByColor("Red");
	 * model.addAttribute("yarncolor", yarnColor); return "findcolor"; }
	 * 
	 * @PostMapping("/fetch") public String getColor(@ModelAttribute("yarncolor")
	 * YarnStock theYarnStock,Model model) {
	 * System.out.println(theYarnStock.getYarnId()); int yarnId =
	 * theYarnStock.getYarnId(); return "redirect:/orders/addform?yarnId="+yarnId; }
	 */
}
