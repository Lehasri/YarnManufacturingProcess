package com.chainsys.yarnmanufacturingprocess.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.yarnmanufacturingprocess.model.Invoice;
import com.chainsys.yarnmanufacturingprocess.model.Orders;

public class OrdersInvoiceDTO {
	private Invoice invoice;
	private List<Orders> ordersList = new ArrayList<Orders>();

	public Invoice getInvoice() {
		return invoice;
	}

	public void setInvoice(Invoice invoice) {
		this.invoice = invoice;
	}

	public List<Orders> getOrdersList() {
		return ordersList;
	}

	public void addOrdersInvoice(Orders invoice) {
		ordersList.add(invoice);
	}
}
