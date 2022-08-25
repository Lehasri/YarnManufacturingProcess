package com.chainsys.yarnmanufacturingprocess.model;



import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="invoice")
public class Invoice {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "invoice_no")
	@SequenceGenerator(name = "invoice_no", sequenceName = "invoice_no", allocationSize = 1)
	@Column(name="invoice_no")
	private int invoiceNo;
	@Column(name="invoice_date")
	private String invoiceDate; 
	@Column(name="order_id")
	private int orderId; 
	@Column(name="total_amount")
	private double totalAmount;
	@Column(name="payment_method")
	private String paymentMethod;
	@Column(name="invoice_status")
	private String invoiceStatus;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="order_id", nullable = false,insertable = false,updatable = false)
	private Orders orders;
	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	public int getInvoiceNo() {
		return invoiceNo;
	}
	public void setInvoiceNo(int invoiceNo) {
		this.invoiceNo = invoiceNo;
	}
	
	public String getInvoiceDate() {
		return invoiceDate;
	}
	public void setInvoiceDate(String invoiceDate) {
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
	
}
