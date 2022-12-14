package com.chainsys.yarnmanufacturingprocess.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.chainsys.yarnmanufacturingprocess.model.Customer;
import com.chainsys.yarnmanufacturingprocess.service.CustomerService;
import com.chainsys.yarnmanufacturingprocess.service.YarnStockService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
	private static final String REDIRECTPAGE = "redirect:/customer/list";
	private static final String ADDCUSTOMER = "add-customer-form";
	private static final String UPDATECUSTOMER = "update-customer-form";
	@Autowired
	CustomerService customerService;
	@Autowired
	YarnStockService yarnStockService;

	@GetMapping("/list")
	public String getAllCustomer(Model model) {
		List<Customer> customerList = customerService.getAllCustomers();
		model.addAttribute("allcustomers", customerList);
		return "list-customers";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Customer theCustomer = new Customer();
		model.addAttribute("addcustomer", theCustomer);
		return ADDCUSTOMER;
	}

	@PostMapping("/add")
	public String addNewCustomer(@ModelAttribute("addcustomer") Customer theCustomer, Model model) {
		try {
			customerService.save(theCustomer);
			model.addAttribute("result", "Created Successfully");
			return "add-customer-form";
		} catch (Exception err) {
			model.addAttribute("message", "Could not create account,try again");
			return ADDCUSTOMER;
		}
	}

	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "customer-modify-form";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int customerId = (int) session.getAttribute("customerId");
		Customer theCustomer = customerService.findById(customerId);
		model.addAttribute("updatecustomer", theCustomer);
		return UPDATECUSTOMER;
	}

	@PostMapping("/update")
	public String updateCustomer(@ModelAttribute("updatecustomer") Customer theCustomr,Model model) {
		try {
			customerService.save(theCustomr);
			model.addAttribute("result", "Updated Successfully");
			return UPDATECUSTOMER;
		} catch (Exception err) {
			model.addAttribute("message", "could not Update account,try again");
			return UPDATECUSTOMER;
		}
	}

	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "customer-delete-form";
	}

	@GetMapping("/deletecustomer")
	public String deleteCustomer(int id) {
		customerService.deleteById(id);
		return REDIRECTPAGE;
	}

	@GetMapping("/findform")
	public String showFindForm() {
		return "fetch-customer-form";
	}

	@GetMapping("/findcustomerbyid")
	public String findCustomerById(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int customerId = (int) session.getAttribute("customerId");
		Customer theCustomer = customerService.findById(customerId);
		model.addAttribute("findcustomerbyid", theCustomer);
		return "find-customer-by-id-form";
	}
	@GetMapping("/logincustomer")
	public String loginForm(Model model) {
		Customer login = new Customer();
		model.addAttribute("log", login);
		return "customerlogin";
	}

	@PostMapping("/checkuserlogin")
	public String checkingAccess(@ModelAttribute("log") Customer customer, Model model, HttpSession session) {
		Customer log = customerService.getEmailIdUserPassword(customer.getEmailId(), customer.getUserPassword());
		try {
			if (log != null) {
				session.setAttribute("customerId", log.getCustomerId());
				session.setAttribute("name", log.getName());
				model.addAttribute("user",log);
				return "products";
			} else {
				model.addAttribute("result", "Invalid user name and password");
			}
		} catch (Exception e) {
			model.addAttribute("error", e.getMessage());
		}
		return "customerlogin";
	}

	@GetMapping("/myprofile")
	public String myProfile(HttpServletRequest request) {

		return "myprofilecustomer";
	}

	 @GetMapping("/customerindex")
	 public String customerIndex(HttpServletRequest request) {
	  return "products"; }
	 

	@GetMapping("/index")
	public String myIndex() {

		return "index";
	}
}
