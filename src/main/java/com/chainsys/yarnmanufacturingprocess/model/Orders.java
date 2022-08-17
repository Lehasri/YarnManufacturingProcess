package com.chainsys.yarnmanufacturingprocess.model;

import java.util.Calendar;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Orders {
	@Column(name = "yarn_id")
	private int yarnId;
	@Id
	@Column(name = "order_id")
	private int orderId;
	@Column(name = "order_date")
	private String orderDate;
	@Column(name = "ordered_customer")
	private String orderedCustomer;
	@Column(name = "ordered_quantity")
	private int orderedQuantity;
	@Column(name = "rate")
	private double rate;
	@Column(name = "order_amount")
	private double orderAmount;
	@Column(name = "receiving_date")
	private Date receivingDate;
	@Column(name = "order_status")
	private String orderStatus;
	@Column(name = "advance")
	private double advance;

	public int getYarnId() {
		return yarnId;
	}

	public void setYarnId(int yarnId) {
		this.yarnId = yarnId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate() {
		Calendar vCalendar = Calendar.getInstance();
		String orderDate = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
				+ vCalendar.get(Calendar.YEAR);

		this.orderDate = orderDate;
	}

	public String getOrderedCustomer() {
		return orderedCustomer;
	}

	public void setOrderedCustomer(String orderedCustomer) {
		this.orderedCustomer = orderedCustomer;
	}

	public int getOrderedQuantity() {
		return orderedQuantity;
	}

	public void setOrderedQuantity(int orderedQuantity) {
		this.orderedQuantity = orderedQuantity;
	}

	public double getRate() {
		return rate;
	}

	public void setRate(double rate) {
		this.rate = rate;
	}

	public double getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(double orderAmount) {
		this.orderAmount = orderAmount;
	}

	public Date getReceivingDate() {
		return receivingDate;
	}

	public void setReceivingDate(Date receivingDate) {
		this.receivingDate = receivingDate;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
	}

	public double getAdvance() {
		return advance;
	}

	public void setAdvance(double advance) {
		this.advance = advance;
	}

}
