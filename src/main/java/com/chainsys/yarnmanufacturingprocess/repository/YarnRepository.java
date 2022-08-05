package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.Yarn;

public interface YarnRepository extends CrudRepository<Yarn,Integer>  {
	Yarn findById(int id);
	Yarn save(Yarn yarn);
	void deleteById(int yarn_id);
	List <Yarn> findAll();
}
