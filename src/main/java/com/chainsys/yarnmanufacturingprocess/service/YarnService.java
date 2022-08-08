package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.Yarn;
import com.chainsys.yarnmanufacturingprocess.repository.YarnRepository;
    @Service
	public class YarnService {
		@Autowired
		private YarnRepository yarnRepository;
		
		public Yarn findById(int id) {
			return yarnRepository.findById(id);
		}
		public Yarn save(Yarn yarn) {
			 return yarnRepository.save(yarn);
		}
        public List<Yarn>getAllYarns()		{
		 List<Yarn>listYarn=yarnRepository.findAll();
		 return listYarn;
		}
		public void deleteById(int id)
		{
			yarnRepository.deleteById(id);
		}
		public List<Yarn> getYarn(int id){
	        return yarnRepository.findAllByCottonId(id);
	    }
	}



