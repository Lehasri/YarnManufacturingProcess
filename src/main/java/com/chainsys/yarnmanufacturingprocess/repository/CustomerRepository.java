package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.Cotton;
import com.chainsys.yarnmanufacturingprocess.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer,Integer>  {
	Customer findById(int id);
	Customer save(Customer customer);
	void deleteById(int customer_id);
	List <Customer> findAll();
	List<Customer> findByYarnId(int id);
}
