package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.chainsys.yarnmanufacturingprocess.model.Supplier;
import com.chainsys.yarnmanufacturingprocess.repository.SupplierRepository;



	@Service
	public class SupplierService {
		@Autowired
		private SupplierRepository repo;
		
		public Supplier findById(int id) {
			return repo.findById(id);
		}
		public Supplier save(Supplier sp) {
			 return repo.save(sp);
		}
        public List<Supplier>getallSuppliers()		{
		 List<Supplier>listSu=repo.findAll();
		 return listSu;
		}
		public void deleteById(int id)
		{
			repo.deleteById(id);
		}
		
	}


