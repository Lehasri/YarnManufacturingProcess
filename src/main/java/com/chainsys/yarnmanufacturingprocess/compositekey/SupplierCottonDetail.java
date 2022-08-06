package com.chainsys.yarnmanufacturingprocess.compositekey;

import java.io.Serializable;

import javax.persistence.Column;

public class SupplierCottonDetail implements Serializable{
	@Column(name = "supplier_id")
	private int supplierId;
	@Column(name = "cotton_id")
	private int cottonId;
	
	public SupplierCottonDetail(int postId,int friendId)
	{
		this.supplierId = postId;
		this.cottonId = friendId;
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
	public void setCottonId(int productId)
	{
		this.cottonId = cottonId;
	}

}
