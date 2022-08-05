package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.YarnStock;

public interface YarnStockRepository extends CrudRepository<YarnStock,Integer>  {
	YarnStock findById(int id);
	YarnStock save(YarnStock yarnStock);
	void deleteById(int yarnStock_id);
	List <YarnStock> findAll();
}
