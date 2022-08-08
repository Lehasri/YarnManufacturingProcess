package com.chainsys.yarnmanufacturingprocess.compositekey;

import java.io.Serializable;

import javax.persistence.Column;

public class SupplierCottonCompositeKey implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Column(name = "supplier_id")
	private int supplierId;
	@Column(name = "cotton_id")
	private int cottonId;
	
	public SupplierCottonCompositeKey(int supplierId,int cottonId)
	{
		this.supplierId = supplierId;
		this.cottonId = cottonId;
	}
	public int getSupplierId()
	{
		return supplierId;
	}
	public void setSupplierId(int supplierId)
	{
		this.supplierId = supplierId;
	}
	public int getCottonId()
	{
		return cottonId;
	}
	public void setCottonId(int cottonId)
	{
		this.cottonId = cottonId;
	}

}
