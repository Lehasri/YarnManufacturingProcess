package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.Supplier;

public interface SupplierRepository extends CrudRepository<Supplier,Integer> {
	Supplier findById(int id);
	Supplier save(Supplier supplier);
	void deleteById(int supplierId);
	List <Supplier> findAll();
	
}
