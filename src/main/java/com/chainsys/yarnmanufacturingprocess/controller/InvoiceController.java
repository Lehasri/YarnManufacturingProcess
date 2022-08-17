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
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;
import com.chainsys.yarnmanufacturingprocess.service.InvoiceService;
import com.chainsys.yarnmanufacturingprocess.service.OrdersService;

@Controller
@RequestMapping("/invoice")
public class InvoiceController {
	@Autowired
	InvoiceService invoiceService;
	@Autowired
	OrdersService ordersService;

	@GetMapping("/list")
	public String getAllInvoices(Model model) {
		List<Invoice> invoiceList = invoiceService.getAllInvoices();
		model.addAttribute("allinvoices", invoiceList);
		return "list-invoices";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Invoice theInvoice = new Invoice();
		model.addAttribute("addinvoice", theInvoice);
		return "add-invoice-form";
	}

	@PostMapping("/add")
	public String addNewInvoices(@ModelAttribute("addinvoice") Invoice theInvoice) {
		invoiceService.save(theInvoice);
		return "redirect:/invoice/list";
	}
	@GetMapping("/modifyform")
	public String showModifyForm() {
		return "invoice-modify-form";
	}

	@GetMapping("/updateform")
	public String showUpdateForm( int id, Model model) {
		Invoice theInvoice = invoiceService.findById(id);
		model.addAttribute("updateinvoice", theInvoice);
		return "update-invoice-form";
	}

	@PostMapping("/update")
	public String updateInvoice(@ModelAttribute("updateinvoice") Invoice theInvoice) {
		invoiceService.save(theInvoice);
		return "redirect:/invoice/list";
	}
	@GetMapping("/deleteform")
	public String showdeleteForm() {
		return "invoice-delete-form";
	}

	@GetMapping("/deleteinvoice")
	public String deleteInvoice( int id) {
		invoiceService.deleteById(id);
		return "redirect:/invoice/list";
	}
	 @GetMapping("/findform")
		public String showFindForm() {
			return "fetch-invoice-form";
		}

	@GetMapping("/findinvoicebyid")
	public String findInvoiceById( int id, Model model) {
		Invoice theInvoice = invoiceService.findById(id);
		model.addAttribute("findinvoicebyid", theInvoice);
		return "find-invoice-by-id-form";
	}
	@GetMapping("/getordersinvoice")
    public String getOrdersInvoiceById(@RequestParam("id")int id, Model model) {
    	Invoice theInvoice = invoiceService.fetchByOrderId(id);
    	Orders theorders = ordersService.findById(theInvoice.getOrderId());
        model.addAttribute("invoicedetail",theInvoice);
        model.addAttribute("orderdetail", theorders);
        return "find-invoice-by-order-id-form";
    }
	

}
