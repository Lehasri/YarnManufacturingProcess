package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.Yarn;

public interface YarnRepository extends CrudRepository<Yarn,Integer>  {
	Yarn findById(int id);
	Yarn save(Yarn yarn);
	void deleteById(int yarnId);
	List <Yarn> findAll();
	List<Yarn> findAllByCottonId(int id);
	Yarn findByCottonId(int id);
	
	
}
