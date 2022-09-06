package com.chainsys.yarnmanufacturingprocess.model;

import java.sql.Timestamp;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.chainsys.yarnmanufacturingprocess.compositekey.SupplierCottonCompositeKey;
@Entity
@Table(name="supplier_cotton_details")
@IdClass(SupplierCottonCompositeKey.class)
public class SupplierCotton {
	@Id
	@Column(name="supplier_id")
	private int supplierId;
	@Id 
	@Column(name="cotton_id")
	private int cottonId; 
	@Column(name="maximum_supply_quantity")
	private int maximumSupplyQuantity;
	@Column(name="rate")
	private double rate;
	@Column(name="lead_time")
	private Timestamp leadTime;
	
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "supplier_id", nullable = false, insertable = false, updatable = false)
	private Supplier supplier;
	
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "cotton_id", nullable = false, insertable = false, updatable = false)
	private Cotton cotton;
	
	public Cotton getCotton() {
		return cotton;
	}
	public void setCotton(Cotton cotton) {
		this.cotton = cotton;
	}
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
	public String toString()
	{
		return String.format("%d, %d, %d, %d, %s", supplierId, cottonId, maximumSupplyQuantity, rate, leadTime);
	}
	
}
