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

import com.chainsys.yarnmanufacturingprocess.model.Invoice;
import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.repository.InvoiceRepository;
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
			model.addAttribute("allorders",ordersList);
			return "list-orders";
		}
	    @GetMapping("/addform")
	    public String showAddForm(Model model)
	    {
	    	Orders theOrders=new Orders();
	    	model.addAttribute("addorders",theOrders);
	    	return "add-orders-form";
	    }
	    @PostMapping("/add")
		public String addNewOrders(@ModelAttribute("addorders") Orders theOrders) {
	    	ordersService.save(theOrders);
	    	return "redirect:/orders/list";
		}
	    @GetMapping("/updateform")
	    public String showUpdateForm(@RequestParam("ordersid") int id,Model model)
	    {
	    	Orders theOrders=ordersService.findById(id);
	    	model.addAttribute("updateorders",theOrders);
	    	return "update-orders-form";
	    }
	    @PostMapping("/update")
		public String updateOrders(@ModelAttribute("updateorders") Orders theOrders) {
	    	ordersService.save(theOrders);
	    	return "redirect:/orders/list";
		}
	    @GetMapping("/deleteorders")
		public String deleteOrders(@RequestParam("ordersid") int id) {
	    	ordersService.deleteById(id);
			return "redirect:/orders/list";
		}
	    @GetMapping("/findordersbyid")
		public String findOrdersById(@RequestParam("ordersid") int id,Model model) {
	    	Orders theOrders=ordersService.findById(id);
	    	model.addAttribute("findordersbyid",theOrders);
	    	return "find-orders-by-id-form";
		}
	    @GetMapping("/getinvoiceorders")
	    public String getInvoiceOrdersByNo(@RequestParam("id")int id, Model model) {
	    	Invoice theInvoice = invoiceService.findById(id);
	        model.addAttribute("fetchInvoiceById", theInvoice);
	    	List<Orders> theOrders = ordersService.getOrders(id);
	        model.addAttribute("allorders", theOrders);
	        return "find-orders-by-invoiceid-form";
	    }
}
