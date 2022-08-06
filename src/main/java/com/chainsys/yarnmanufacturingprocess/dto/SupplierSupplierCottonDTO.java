package com.chainsys.yarnmanufacturingprocess.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;

public class SupplierSupplierCottonDTO {
	private Supplier supplier;
	private List<SupplierCotton> supplierCottonList = new ArrayList<SupplierCotton>();

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public List<SupplierCotton> getSupplierCottonList() {
		return supplierCottonList;
	}

	public void addSupplierSupplierCotton(SupplierCotton supplier) {
		supplierCottonList.add(supplier);
	}
}
