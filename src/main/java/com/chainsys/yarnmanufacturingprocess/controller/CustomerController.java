package com.chainsys.yarnmanufacturingprocess.controller;


	import java.util.List;

	import org.springframework.beans.factory.annotation.Autowired;
	import org.springframework.stereotype.Controller;
	import org.springframework.ui.Model;
	import org.springframework.web.bind.annotation.GetMapping;
	import org.springframework.web.bind.annotation.ModelAttribute;
	import org.springframework.web.bind.annotation.PostMapping;
	import org.springframework.web.bind.annotation.RequestMapping;
	import com.chainsys.yarnmanufacturingprocess.model.Customer;
import com.chainsys.yarnmanufacturingprocess.model.CustomerLogin;
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
	    	return "customer";
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
	    @GetMapping("/customerindex")
		public String CustomerIndex() {
			
			return "customer";
		}
	    @GetMapping("/logincustomer")
		public String loginForm(Model model) {
			CustomerLogin login = new CustomerLogin ();
			model.addAttribute("log",login);
			return "customerlogin";
		}
	    @PostMapping("/checkuserlogin")
	    public String checkingAccess(@ModelAttribute("log") Customer customer,Model model) {
			Customer log = customerService.getEmailIdUserPassword(customer.getEmailId(), customer.getUserPassword());
	        if (log!= null){

	        	return "redirect:/customer/customerindex";
	        } else {
	        
	            return "redirect:/customer/logincustomer";
	        }
	    }
}
