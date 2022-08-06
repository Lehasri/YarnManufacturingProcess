package com.chainsys.yarnmanufacturingprocess.service;

import java.util.Iterator;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.chainsys.yarnmanufacturingprocess.dto.SupplierSupplierCottonDTO;
import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;
import com.chainsys.yarnmanufacturingprocess.repository.SupplierCottonRepository;
import com.chainsys.yarnmanufacturingprocess.repository.SupplierRepository;
	@Service
	public class SupplierService {
		@Autowired
		private SupplierRepository supplierRepository;
		@Autowired
		private SupplierCottonRepository supplierCottonRepository;
		
		public Supplier findById(int id) {
			return supplierRepository.findById(id);
		}
		public Supplier save(Supplier supplier) {
			 return supplierRepository.save(supplier);
		}
        public List<Supplier>getAllSuppliers()		{
		 List<Supplier>listSupplier=supplierRepository.findAll();
		 return listSupplier;
		}
		public void deleteById(int id)
		{
			supplierRepository.deleteById(id);
		}
		@Transactional
	    public SupplierSupplierCottonDTO getSupplierAndSupplierCotton(int id) {

			Supplier supplier = findById(id);
			SupplierSupplierCottonDTO supplierSupplierCottonDTO = new SupplierSupplierCottonDTO();
			supplierSupplierCottonDTO.setSupplier(supplier);;
	        List<SupplierCotton> supplierCotton = supplierCottonRepository.findById(id);
	          Iterator<SupplierCotton> itr=supplierCotton.iterator();
	        while(itr.hasNext()) {
	        	supplierSupplierCottonDTO.addSupplierSupplierCotton((SupplierCotton) itr.next());
	        }
	        return supplierSupplierCottonDTO;
		}
	}


