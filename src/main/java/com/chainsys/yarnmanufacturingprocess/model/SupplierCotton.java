package com.chainsys.yarnmanufacturingprocess.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="supplier_cotton_details")
public class SupplierCotton {
	@Id
	@Column(name="supplier_id")
	private int supplierId;
	@Column(name="cotton_id")
	private int cottonId; 
	@Column(name="maximum_supply_quantity")
	private int maximumSupplyQuantity;
	@Column(name="rate")
	private double rate;
	@Column(name="lead_time")
	private Timestamp leadTime;
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public int getCottonId() {
		return cottonId;
	}
	public void setCottonId(int cottonId) {
		this.cottonId = cottonId;
	}
	public int getMaximumSupplyQuantity() {
		return maximumSupplyQuantity;
	}
	public void setMaximumSupplyQuantity(int maximumSupplyQuantity) {
		this.maximumSupplyQuantity = maximumSupplyQuantity;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public Timestamp getLeadTime() {
		return leadTime;
	}
	public void setLeadTime(Timestamp leadTime) {
		this.leadTime = leadTime;
	}
	@Override
	public String toString() // Default method
	{
		return String.format("%d, %d, %d, %d, %n",supplierId,cottonId,maximumSupplyQuantity,rate,leadTime);
	}
	
}
