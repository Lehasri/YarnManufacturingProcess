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
import com.chainsys.yarnmanufacturingprocess.model.Invoice;
import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.Yarn;
import com.chainsys.yarnmanufacturingprocess.service.CottonService;
import com.chainsys.yarnmanufacturingprocess.service.YarnService;

@Controller
@RequestMapping("/cotton")
public class CottonController {
	@Autowired
	CottonService cottonService;
	@Autowired
	YarnService yarnService;

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
	public String addNewCottons(@ModelAttribute("addcotton") Cotton theCotton) {
		cottonService.save(theCotton);
		return "redirect:/cotton/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("cottonid") int id, Model model) {
		Cotton theCotton = cottonService.findById(id);
		model.addAttribute("updatecotton", theCotton);
		return "update-cotton-form";
	}

	@PostMapping("/update")
	public String updateCotton(@ModelAttribute("updatecotton") Cotton theCotton) {
		cottonService.save(theCotton);
		return "redirect:/cotton/list";
	}

	@GetMapping("/deletecotton")
	public String deleteCotton(@RequestParam("cottonid") int id) {
		cottonService.deleteById(id);
		return "redirect:/cotton/list";
	}

	@GetMapping("/findcottonbyid")
	public String findCottonById(@RequestParam("cottonid") int id, Model model) {
		Cotton theCotton = cottonService.findById(id);
		model.addAttribute("findcottonbyid", theCotton);
		return "find-cotton-by-id-form";
	}
	 @GetMapping("/getcottonyarn")
	    public String getInvoiceOrdersByNo(@RequestParam("id")int id, Model model) {
	    	Cotton theCotton = cottonService.findById(id);
	        model.addAttribute("fetchcottonbyid", theCotton);
	    	List<Yarn> theYarn = yarnService.getYarn(id);
	        model.addAttribute("allyarns", theYarn);
	        return "find-cotton-yarn-by-id-form";
	    }
	
}
