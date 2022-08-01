package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;

public class SupplierCottonRepository {
	SupplierCotton findById(int id);
	SupplierCotton save(SupplierCotton sc);
	void deleteById(int sc_id);
	List <SupplierCotton> findAll();
}
