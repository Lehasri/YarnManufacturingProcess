package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.YarnStock;

public interface YarnStockRepository extends JpaRepository<YarnStock,Integer>  {
	YarnStock findById(int id);
	YarnStock save(YarnStock yarnStock);
	void deleteById(int yarnStock_id);
	List <YarnStock> findAll();
	List<YarnStock> findAllByYarnId(int id);
	
 YarnStock findByYarnStatusAndColorAndYarnType(String status,String color,String yarnType);

	/*
	 * @Query(value="SELECT * FROM yarn_stock where color=?1 and yarn_type?=2"
	 * ,nativeQuery=true) public YarnStock getYarnIdByColor(String color,String
	 * yarnType);
	 */
}
