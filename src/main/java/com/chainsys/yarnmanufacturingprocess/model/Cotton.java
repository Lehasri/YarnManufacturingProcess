package com.chainsys.yarnmanufacturingprocess.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
@Entity
@Table(name="cotton")
public class Cotton {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "cotton_id")
	@SequenceGenerator(name = "cotton_id", sequenceName = "cotton_id", allocationSize = 1)
	@Column(name="cotton_id")
	private int cottonId;
	@Column(name="cotton_type")
	private String cottonType;
	@Column(name="colour")
	private String colour;
	@Column(name="trash_Content")
	private String trashContent;
	@Column(name="ginning_Percentage")
	private String ginningPercentage;
	@Column(name="staple_length")
	private String stapleLength;
	@Column(name="micronaire")
	private String micronaire;
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
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public String getTrashContent() {
		return trashContent;
	}
	public void setTrashContent(String trashContent) {
		this.trashContent = trashContent;
	}
	public String getGinningPercentage() {
		return ginningPercentage;
	}
	public void setGinningPercentage(String ginningPercentage) {
		this.ginningPercentage = ginningPercentage;
	}
	public String getStapleLength() {
		return stapleLength;
	}
	public void setStapleLength(String stapleLength) {
		this.stapleLength = stapleLength;
	}
	public String getMicronaire() {
		return micronaire;
	}
	public void setMicronaire(String micronaire) {
		this.micronaire = micronaire;
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
	
}
