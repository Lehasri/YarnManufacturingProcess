package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.chainsys.yarnmanufacturingprocess.model.Orders;

public interface OrdersRepository extends JpaRepository<Orders,Integer>  {
	Orders findById(int id);
	Orders save(Orders orders);
	void deleteById(int ordersId);
	List <Orders> findAll();
    List<Orders> findByOrderId(int id);
    List<Orders> findAllByCustomerId(int id);
    List<Orders> findAllByYarnId(int id);
  
	
}