package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.repository.SupplierRepository;
	@Service
	public class SupplierService {
		@Autowired
		private SupplierRepository supplierRepository;
		
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
		public Supplier getEmailIdUserPassword(String emailId, String userPassword) {
			return supplierRepository.findByEmailIdAndUserPassword(emailId, userPassword);
		}
		
	}
