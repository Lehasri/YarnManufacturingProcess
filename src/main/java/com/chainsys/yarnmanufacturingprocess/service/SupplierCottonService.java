package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Cotton;
import com.chainsys.yarnmanufacturingprocess.model.SupplierCotton;
import com.chainsys.yarnmanufacturingprocess.repository.CottonRepository;
import com.chainsys.yarnmanufacturingprocess.repository.SupplierCottonRepository;

@Service
	public class SupplierCottonService {
		@Autowired
		private  SupplierCottonRepository  supplierCottonRepository;
		
		public SupplierCotton findById(int id) {
			return  supplierCottonRepository.findById(id);
		}
		public SupplierCotton save(SupplierCotton supplierCotton) {
			 return supplierCottonRepository.save(supplierCotton);
		}
       public List<SupplierCotton>getAllSupplierCottons()		{
		 List<SupplierCotton>listCotton=supplierCottonRepository.findAll();
		 return listCotton;
		}
		public void deleteById(int id)
		{
			supplierCottonRepository.deleteById(id);
		}
}
