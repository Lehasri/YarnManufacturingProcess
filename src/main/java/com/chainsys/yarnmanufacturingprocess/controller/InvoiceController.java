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
import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.repository.SupplierRepository;
import com.chainsys.yarnmanufacturingprocess.service.InvoiceService;
import com.chainsys.yarnmanufacturingprocess.service.SupplierService;

@Controller
@RequestMapping("/invoice")
public class InvoiceController {
	@Autowired
	InvoiceService invoiceService;

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

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("invoiceid") int id, Model model) {
		Invoice theInvoice = invoiceService.findById(id);
		model.addAttribute("updateinvoice", theInvoice);
		return "update-invoice-form";
	}

	@PostMapping("/update")
	public String updateInvoice(@ModelAttribute("updateinvoice") Invoice theInvoice) {
		invoiceService.save(theInvoice);
		return "redirect:/invoice/list";
	}

	@GetMapping("/deleteinvoice")
	public String deleteInvoice(@RequestParam("invoiceid") int id) {
		invoiceService.deleteById(id);
		return "redirect:/invoice/list";
	}

	@GetMapping("/findinvoicebyid")
	public String findInvoiceById(@RequestParam("invoiceid") int id, Model model) {
		Invoice theInvoice = invoiceService.findById(id);
		model.addAttribute("findinvoicebyid", theInvoice);
		return "find-invoice-by-id-form";
	}
}
