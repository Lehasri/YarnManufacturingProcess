package com.chainsys.yarnmanufacturingprocess.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Orders {
	@Column(name = "yarn_id")
	private int yarnId;
	@Column(name = "customer_id")
	private int customerId;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "order_id")
	@SequenceGenerator(name = "order_id", sequenceName = "order_id", allocationSize = 1)
	@Column(name = "order_id")
	private int orderId;
	@Column(name = "order_date")
	private Date orderDate;
	@Column(name = "name")
	private String name;
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
	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public Date getOrderDate() {
		return orderDate;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
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
