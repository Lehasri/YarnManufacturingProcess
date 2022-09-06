package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.compositekey.SupplierCottonCompositeKey;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;
import com.chainsys.yarnmanufacturingprocess.repository.SupplierCottonRepository;

@Service
public class SupplierCottonService {
	@Autowired
	private SupplierCottonRepository supplierCottonRepository;

	public List<SupplierCotton> getAllSupplierCottons() {
		return supplierCottonRepository.findAll();
	}
    public SupplierCotton save(SupplierCotton supplierCotton)
    {
		return supplierCottonRepository.save(supplierCotton);
    	
    }
	public void deleteById(SupplierCottonCompositeKey id) {
		supplierCottonRepository.deleteById(id);
	}

	public Optional<SupplierCotton> findById(SupplierCottonCompositeKey id) {
		return supplierCottonRepository.findById(id);
	}
	public List<SupplierCotton> getSuppliers(int id){
        return supplierCottonRepository.findAllBySupplierId(id);
    }
	public SupplierCotton findByCottonId(int id){
        return supplierCottonRepository.findByCottonId(id);
    }
	public SupplierCotton findBySupplierId(int id){
        return supplierCottonRepository.findBySupplierId(id);
    }
}
