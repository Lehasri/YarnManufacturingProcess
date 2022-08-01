package com.chainsys.yarnmanufacturingprocess.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="yarn_stock")
public class YarnStock {
	@Id
	@Column(name="yarn_id")
	private int yarnId;
	@Column(name="yarn_status")
	private String yarnStatus; 
	@Column(name="per_day_production")
	private int perDayProduction;
	@Column(name="total_stock_in_hand")
	private int totalStockInHand;
	
	
	public int getYarnId() {
		return yarnId;
	}
	public void setYarnId(int yarnId) {
		this.yarnId = yarnId;
	}
	public String getYarnStatus() {
		return yarnStatus;
	}
	public void setYarnStatus(String yarnStatus) {
		this.yarnStatus = yarnStatus;
	}
	public int getPerDayProduction() {
		return perDayProduction;
	}
	public void setPerDayProduction(int perDayProduction) {
		this.perDayProduction = perDayProduction;
	}
	public int getTotalStockInHand() {
		return totalStockInHand;
	}
	public void setTotalStockInHand(int totalStockInHand) {
		this.totalStockInHand = totalStockInHand;
	}
	@Override
	public String toString() // Default method
	{
		return String.format("%d, %s, %d, %d",yarnId,yarnStatus,perDayProduction,totalStockInHand);
	}
	

}
