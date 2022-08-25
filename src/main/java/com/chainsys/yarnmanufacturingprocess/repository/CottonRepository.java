package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.Cotton;

public interface CottonRepository extends CrudRepository<Cotton,Integer>  {
	Cotton findById(int id);
	Cotton save(Cotton cotton);
	void deleteById(int cottonId);
	List <Cotton> findAll();
}
