package com.chainsys.yarnmanufacturingprocess.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="cotton")
public class Cotton {
	@Id
	@Column(name="cotton_id")
	private int cottonId;
	@Column(name="cotton_type")
	private String cottonType;
	@Column(name="cotton_quality")
	private String cottonQuality;
	@Column(name="rate_per_ton")
	private double ratePerTon;
	@Column(name="stock_in_hand")
	private int stockInHand;
	
	public int getCottonId() {
		return cottonId;
	}
	public void setCottonId(int cottonId) {
		this.cottonId = cottonId;
	}
	public String getCottonType() {
		return cottonType;
	}
	public void setCottonType(String cottonType) {
		this.cottonType = cottonType;
	}
	public String getCottonQuality() {
		return cottonQuality;
	}
	public void setCottonQuality(String cottonQuality) {
		this.cottonQuality = cottonQuality;
	}
	public double getRatePerTon() {
		return ratePerTon;
	}
	public void setRatePerTon(double ratePerTon) {
		this.ratePerTon = ratePerTon;
	}
	public int getStockInHand() {
		return stockInHand;
	}
	public void setStockInHand(int stockInHand) {
		this.stockInHand = stockInHand;
	}
	@Override
	public String toString() // Default method
    {
		return String.format("%d, %s, %s, %d, %d",cottonId,cottonType,cottonQuality,ratePerTon,stockInHand);
 	}
	
}
