package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.compositekey.SupplierCottonCompositeKey;
import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;

public interface SupplierCottonRepository extends CrudRepository<SupplierCotton, SupplierCottonCompositeKey> {
	Optional<SupplierCotton> findById(SupplierCottonCompositeKey id);
	List<SupplierCotton> findByCottonId(int id);

	SupplierCotton save(SupplierCotton supplierCotton);

	void deleteById(SupplierCottonCompositeKey supplierId);

	List<SupplierCotton> findAll();
	 
	List<SupplierCotton> findAllBySupplierId(int id);

}
