package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Invoice;
import com.chainsys.yarnmanufacturingprocess.repository.InvoiceRepository;
    @Service
	public class InvoiceService {
		@Autowired
		private InvoiceRepository invoiceRepository;
		
		public Invoice findById(int id) {
			return invoiceRepository.findById(id);
		}
		public Invoice save(Invoice invoice) {
			 return invoiceRepository.save(invoice);
		}
        public List<Invoice>getAllInvoices()		{
		 List<Invoice>listInvoice=invoiceRepository.findAll();
		 return listInvoice;
		}
		public void deleteById(int id)
		{
			invoiceRepository.deleteById(id);
		}
		
	}




