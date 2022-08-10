package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.YarnStock;
import com.chainsys.yarnmanufacturingprocess.repository.YarnStockRepository;
    @Service
	public class YarnStockService {
		@Autowired
		private YarnStockRepository yarnStockRepository;
		
		public YarnStock findById(int id) {
			return yarnStockRepository.findById(id);
		}
		public YarnStock save(YarnStock yarn) {
			 return yarnStockRepository.save(yarn);
		}
        public List<YarnStock>getAllYarnStocks()		{
		 List<YarnStock>listYarnStock=yarnStockRepository.findAll();
		 return listYarnStock;
		}
		public void deleteById(int id)
		{
			yarnStockRepository.deleteById(id);
		}
		public List<YarnStock> getYarnStock(int id){
	        return yarnStockRepository.findAllByYarnId(id);
	    }
		
		
	}

