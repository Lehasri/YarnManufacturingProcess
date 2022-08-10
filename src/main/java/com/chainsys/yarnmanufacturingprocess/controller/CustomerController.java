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
    import com.chainsys.yarnmanufacturingprocess.model.Customer;
import com.chainsys.yarnmanufacturingprocess.model.Invoice;
import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.YarnStock;
import com.chainsys.yarnmanufacturingprocess.service.CustomerService;
import com.chainsys.yarnmanufacturingprocess.service.YarnStockService;

	@Controller
	@RequestMapping("/customer")
	public class CustomerController {
		@Autowired
		CustomerService customerService;
		@Autowired
		YarnStockService yarnStockService;
	    @GetMapping("/list")
		public String getAllCustomer(Model model) {
			List<Customer> customerList = customerService.getAllCustomers();
			model.addAttribute("allcustomers",customerList);
			return "list-customers";
		}
	    @GetMapping("/addform")
	    public String showAddForm(Model model)
	    {
	    	Customer theCustomer=new Customer();
	    	model.addAttribute("addcustomer",theCustomer);
	    	return "add-customer-form";
	    }
	    @PostMapping("/add")
		public String addNewCustomer(@ModelAttribute("addcustomer") Customer theCustomer) {
	    	customerService.save(theCustomer);
	    	return "redirect:/customer/list";
		}
	    @GetMapping("/modifyform")
		public String showModifyForm() {
			return "customer-modify-form";
		}
	    @GetMapping("/updateform")
	    public String showUpdateForm( int id,Model model)
	    {
	    	Customer theCustomer=customerService.findById(id);
	    	model.addAttribute("updatecustomer",theCustomer);
	    	return "update-customer-form";
	    }
	    @PostMapping("/update")
		public String updateCustomer(@ModelAttribute("updatecustomer") Customer theCustomer) {
	    	customerService.save(theCustomer);
	    	return "redirect:/customer/list";
		}
	    @GetMapping("/deleteform")
		public String showdeleteForm() {
			return "customer-delete-form";
		}
	    @GetMapping("/deletecustomer")
		public String deleteCustomer( int id) {
	    	customerService.deleteById(id);
			return "redirect:/customer/list";
		}
	    @GetMapping("/findform")
		public String showFindForm() {
			return "fetch-customer-form";
		}
	    @GetMapping("/findcustomerbyid")
		public String findCustomerById( int id,Model model) {
	    	Customer theCustomer=customerService.findById(id);
	    	model.addAttribute("findcustomerbyid",theCustomer);
	    	return "find-customer-by-id-form";
		}
	   
}
