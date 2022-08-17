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
import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.service.InvoiceService;
import com.chainsys.yarnmanufacturingprocess.service.OrdersService;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	OrdersService ordersService;
	@Autowired
	InvoiceService invoiceService;

	@GetMapping("/list")
	public String getAllOrders(Model model) {
		List<Orders> ordersList = ordersService.getAllOrders();
		model.addAttribute("allorders", ordersList);
		return "list-orders";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Orders theOrders = new Orders();
		model.addAttribute("addorder", theOrders);
		return "add-order-form";
	}

	@PostMapping("/add")
	public String addNewOrder(@Valid @ModelAttribute("addorder") Orders theOrders,Errors errors) {
		theOrders.setOrderDate();
		ordersService.save(theOrders);
		return "redirect:/orders/list";
	}

	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "order-modify-form";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(int id, Model model) {
		Orders theOrders = ordersService.findById(id);
		model.addAttribute("updateorder", theOrders);
		return "update-order-form";
	}

	@PostMapping("/update")
	public String updateOrder(@Valid Orders theOrders,Errors errors) {
		if(errors.hasErrors()) {
			return "update-order-form";
		}
		ordersService.save(theOrders);
		return "redirect:/orders/list";
	}

	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "order-delete-form";
	}

	@GetMapping("/deleteorder")
	public String deleteOrder(int id) {
		ordersService.deleteById(id);
		return "redirect:/orders/list";
	}

	@GetMapping("/findform")
	public String showFindForm() {
		return "fetch-order-form";
	}

	@GetMapping("/findorderbyid")
	public String findOrdersById(int id, Model model) {
		Orders theOrders = ordersService.findById(id);
		model.addAttribute("findorderbyid", theOrders);
		return "find-order-by-id-form";
	}

}
