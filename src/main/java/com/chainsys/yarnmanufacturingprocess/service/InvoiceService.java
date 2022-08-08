package com.chainsys.yarnmanufacturingprocess.service;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Invoice;
import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.repository.InvoiceRepository;
import com.chainsys.yarnmanufacturingprocess.repository.OrdersRepository;
    @Service
	public class InvoiceService {
		@Autowired
		private InvoiceRepository invoiceRepository;
		@Autowired
		private OrdersRepository ordersRepository;
		
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
//		@Transactional
//	    public OrdersInvoiceDTO getOrdersAndInvioice(int id) {
//
//			Invoice invoice = findById(id);
//			OrdersInvoiceDTO ordersInvoiceDTO = new OrdersInvoiceDTO();
//			ordersInvoiceDTO.setInvoice(invoice);
//	        List<Orders> order = ordersRepository.findById(id);
//	          Iterator<Orders> itr=order.iterator();
//	        while(itr.hasNext()) {
//	        	ordersInvoiceDTO.addOrdersInvoice((Orders) itr.next());
//	        }
//	        return ordersInvoiceDTO;
//		}
	}




