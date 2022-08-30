package com.chainsys.yarnmanufacturingprocess.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
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

import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.YarnStock;
import com.chainsys.yarnmanufacturingprocess.service.CustomerService;
import com.chainsys.yarnmanufacturingprocess.service.InvoiceService;
import com.chainsys.yarnmanufacturingprocess.service.OrdersService;
import com.chainsys.yarnmanufacturingprocess.service.YarnStockService;

@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	OrdersService ordersService;
	@Autowired
	InvoiceService invoiceService;
	@Autowired
	YarnStockService yarnStockService;
	@Autowired
	CustomerService customerService;

	@GetMapping("/list")
	public String getAllOrders(Model model) {
		List<Orders> ordersList = ordersService.getAllOrders();
		model.addAttribute("allorders", ordersList);
		return "list-orders";
	}

	@GetMapping("/addform")
	public String showAddForm(@RequestParam("id") int id,Model model,HttpServletRequest request) {
		YarnStock theYarn = yarnStockService.findById(id);
		HttpSession session = request.getSession();
		int customerId = (int) session.getAttribute("customerId");
		model.addAttribute("yarnid", theYarn);
		String name = (String) session.getAttribute("name");
		Orders theOrders = new Orders();
		theOrders.setCustomerId(customerId);
		theOrders.setYarnId(id);
		theOrders.setName(name);
		model.addAttribute("addorder", theOrders);
		return "add-order-form";
	}

	@PostMapping("/add")
	public String addNewOrder(@Valid @ModelAttribute("addorder") Orders theOrders, Errors error) {
		theOrders.setOrderDate();
		theOrders.setReceivingDate();
		if(error.hasErrors())
		{
			return "add-order-form";
		}
		ordersService.save(theOrders);
		int orderId = theOrders.getOrderId();
		return "redirect:/invoice/addform?orderId=" + orderId;
	}

	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "order-modify-form";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("id") int id, Model model) {
		Orders theOrders = ordersService.findById(id);
		model.addAttribute("updateorder", theOrders);
		return "update-order-form";
	}

	@PostMapping("/update")
	public String updateOrder(@Valid Orders theOrders, Errors errors) {
		if (errors.hasErrors()) {
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
	@GetMapping("/findproductform")
	public String showFindProductForm() {
		return "fetch-order-product-form";
	}
	@GetMapping("/findorderbycustomerid")
	public String findOrdersByCustomerId( Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		int customerId = (int) session.getAttribute("customerId");
		List<Orders> theOrders = ordersService.getOrdersByCustomerId(customerId);
		model.addAttribute("allOrders", theOrders);
		System.out.println(theOrders);
		return "list-orders-by-customer-id";
	}
	@GetMapping("/getyarnorder")
    public String getYarnOrderById(@RequestParam("id")int id, Model model) {
    	Orders theOrders = ordersService.findById(id);
    	YarnStock theYarnStock = yarnStockService.findById(theOrders.getYarnId());
        model.addAttribute("orderdetail",theOrders);
        model.addAttribute("yarnstockdetail", theYarnStock);
        return "find-product-by-order-id-form";
    }
	
}
