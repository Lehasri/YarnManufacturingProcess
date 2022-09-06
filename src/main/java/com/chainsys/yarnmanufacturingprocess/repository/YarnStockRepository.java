package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.chainsys.yarnmanufacturingprocess.model.YarnStock;

public interface YarnStockRepository extends JpaRepository<YarnStock,Integer>  {
	YarnStock findById(int id);
	YarnStock save(YarnStock yarnStock);
	void deleteById(int yarnStockId);
	List <YarnStock> findAll();
	List<YarnStock> findAllByYarnId(int id);
	
 YarnStock findByYarnStatusAndColorAndYarnType(String status,String color,String yarnType);

}
