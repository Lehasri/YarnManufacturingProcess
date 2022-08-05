package com.chainsys.yarnmanufacturingprocess.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="invoice")
public class Invoice {
	@Id
	@Column(name="invoice_no")
	private int invoiceNo;
	@Column(name="invoice_date")
	private Date invoiceDate; 
	@Column(name="order_id")
	private int orderId;
	@Column(name="total_amount")
	private double totalAmount;
	@Column(name="payment_method")
	private String paymentMethod;
	@Column(name="invoice_status")
	private String invoiceStatus;

	public int getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(int invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	public Date getInvoiceDate() {
		return invoiceDate;
	}
	public void setInvoiceDate(Date invoiceDate) {
		this.invoiceDate = invoiceDate;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public double getTotalAmount() {
		return totalAmount;
	}
	public void setTotalAmount(double totalAmount) {
		this.totalAmount = totalAmount;
	}
	public String getPaymentMethod() {
		return paymentMethod;
	}
	public void setPaymentMethod(String paymentMethod) {
		this.paymentMethod = paymentMethod;
	}
	public String getInvoiceStatus() {
		return invoiceStatus;
	}
	public void setInvoiceStatus(String invoiceStatus) {
		this.invoiceStatus = invoiceStatus;
	}
	@Override
	public String toString() // Default method
    {
		return String.format("%d, %s, %d, %d, %s, %s",invoiceNo,invoiceDate,orderId,totalAmount,paymentMethod,invoiceStatus);
 	}
	
	
}
