package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.repository.OrdersRepository;
    @Service
	public class OrdersService {
		@Autowired
		private OrdersRepository ordersRepository;
		
		public Orders findById(int id) {
			return ordersRepository.findById(id);
		}
		public Orders save(Orders orders) {
			 return ordersRepository.save(orders);
		}
        public List<Orders>getAllOrders()		{
		 List<Orders>listOrders=ordersRepository.findAll();
		 return listOrders;
		}
		public void deleteById(int id)
		{
			ordersRepository.deleteById(id);
		}
		
	}