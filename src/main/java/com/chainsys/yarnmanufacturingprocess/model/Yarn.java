package com.chainsys.yarnmanufacturingprocess.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "yarn_daily_production")
public class Yarn {
	@Column(name = "production_date")
	private String productionDate;
	@Column(name = "production_quantity")
	private int productionQuantity;
	@Column(name = "remarks")
	private String remarks;
	@Id
	@Column(name = "cotton_id")
	private int cottonId;
	@Column(name = "quantity_used")
	private int quantityUsed;

	public String getProductionDate() {
		return productionDate;
	}

	public void setProductionDate() {
		Calendar vCalendar = Calendar.getInstance();
		String productionDate = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
				+ vCalendar.get(Calendar.YEAR);

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

}
