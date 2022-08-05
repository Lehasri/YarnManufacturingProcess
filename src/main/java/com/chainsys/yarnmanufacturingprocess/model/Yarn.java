package com.chainsys.yarnmanufacturingprocess.model;


import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="yarn_daily_production")
public class Yarn {
	@Column(name="production_date")
	private Date productionDate;
	@Column(name="production_quantity")
	private int productionQuantity;
	@Column(name="remarks")
	private String remarks;
	@Id
	@Column(name="cotton_id")
	private int cottonId;
	@Column(name="quantity_used")
	private int quantityUsed; 
	
	public Date getProductionDate() {
		return productionDate;
	}
	public void setProductionDate(Date productionDate) {
		this.productionDate = productionDate;
	}
	
	public int getProductionQuantity() {
		return productionQuantity;
	}
	public void setProductionQuantity(int productionQuantity) {
		this.productionQuantity = productionQuantity;
	}
	public String getRemarks() {
		return remarks;
	}
	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	public int getCottonId() {
		return cottonId;
	}
	public void setCottonId(int cottonId) {
		this.cottonId = cottonId;
	}
	public int getQuantityUsed() {
		return quantityUsed;
	}
	public void setQuantityUsed(int quantityUsed) {
		this.quantityUsed = quantityUsed;
	}
	@Override
	public String toString() // Default method
	{
		return String.format("%s, %d, %s, %d, %d",productionDate,productionQuantity,remarks,cottonId,quantityUsed);
	}
	
	
}
