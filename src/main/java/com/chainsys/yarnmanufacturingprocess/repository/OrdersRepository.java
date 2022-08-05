package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.Orders;

public interface OrdersRepository extends CrudRepository<Orders,Integer>  {
	Orders findById(int id);
	Orders save(Orders orders);
	void deleteById(int orders_id);
	List <Orders> findAll();
}
