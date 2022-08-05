package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;

public interface SupplierCottonRepository extends CrudRepository<SupplierCotton,Integer> {
	SupplierCotton findById(int id);
	SupplierCotton save(SupplierCotton cotton);
	void deleteById(int cotton_id);
	List <SupplierCotton> findAll();
	
}
