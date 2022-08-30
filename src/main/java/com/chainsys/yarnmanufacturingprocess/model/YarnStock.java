package com.chainsys.yarnmanufacturingprocess.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name="yarn_stock")
public class YarnStock {
	@Column(name = "production_date")
	private String productionDate;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "yarn_id")
	@SequenceGenerator(name = "yarn_id", sequenceName = "yarn_id", allocationSize = 1)
	@Column(name="yarn_id")
	private int yarnId;
	@Column(name="yarn_type")
	private String yarnType; 
	@Column(name="color")
	private String color; 
	@Column(name="yarn_status")
	private String yarnStatus; 
	@Column(name="per_day_production")
	private int perDayProduction;
	@Column(name="quantity")
	private int quantity;
	@Column(name="rate")
	private int rate;
	@Column(name="total_stock_in_hand")
	private int totalStockInHand;
	
	public String getProductionDate() {
		return productionDate;
	}
	public void setProductionDate() {
		Calendar vCalendar = Calendar.getInstance();
		String productionDate = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
				+ vCalendar.get(Calendar.YEAR);

		this.productionDate = productionDate;
	}
	public int getYarnId() {
		return yarnId;
	}
	public void setYarnId(int yarnId) {
		this.yarnId = yarnId;
	}
	public String getYarnType() {
		return yarnType;
	}
	public void setYarnType(String yarnType) {
		this.yarnType = yarnType;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
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
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	public int getTotalStockInHand() {
		return totalStockInHand;
	}
	public void setTotalStockInHand(int totalStockInHand) {
		this.totalStockInHand = totalStockInHand;
	}
}
