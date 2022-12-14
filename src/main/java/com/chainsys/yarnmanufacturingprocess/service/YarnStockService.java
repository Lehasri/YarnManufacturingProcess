package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.YarnStock;
import com.chainsys.yarnmanufacturingprocess.repository.YarnStockRepository;

@Service
public class YarnStockService {
	@Autowired
	private YarnStockRepository yarnStockRepository;
	
	public YarnStock findById(int id) {
		return yarnStockRepository.findById(id);
	}

	public List<YarnStock> getAllYarnStocks() {
		return yarnStockRepository.findAll();
	}

	public void deleteById(int id) {
		yarnStockRepository.deleteById(id);
	}

	public List<YarnStock> getYarnStock(int id) {
		return yarnStockRepository.findAllByYarnId(id);
	}

	public YarnStock yarnGetByStatus(String status,String color,String yarnType) {
		return yarnStockRepository.findByYarnStatusAndColorAndYarnType(status,color,yarnType);
	}
	public YarnStock save(YarnStock theyarnstock) {
		return yarnStockRepository.save(theyarnstock);
	}
	
	
}
