package com.chainsys.yarnmanufacturingprocess.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Orders;
import com.chainsys.yarnmanufacturingprocess.model.YarnStock;
import com.chainsys.yarnmanufacturingprocess.repository.OrdersRepository;
import com.chainsys.yarnmanufacturingprocess.repository.YarnStockRepository;

@Service
public class OrdersService {
	@Autowired
	private OrdersRepository ordersRepository;
	@Autowired
	private YarnStockRepository yarnStockRepository;

	public Orders findById(int id) {
		return ordersRepository.findById(id);
	}
	public List<Orders> getAllOrders() {
		List<Orders> listOrders = ordersRepository.findAll();
		return listOrders;
	}

	public void deleteById(int id) {
		ordersRepository.deleteById(id);
	}

	public Orders findByInvoiceId(int id) {
		return ordersRepository.findById(id);
	}

	public List<Orders> getOrders(int id) {
		return ordersRepository.findByOrderId(id);

	}
	public List<Orders> getOrdersByYarnId(int id) {
		return ordersRepository.findAllByYarnId(id);

	}
	public List<Orders> getOrdersByCustomerId(int id) {
		List<Orders> olist = ordersRepository.findAll();
		System.out.println(olist);
		List<Orders> clist = new ArrayList<Orders>();
		for (Orders orders : olist) {
			if(orders.getCustomerId()==id)
				clist.add(orders);
		}
		System.out.println(clist);
		return ordersRepository.findAllByCustomerId(id);
//		return clist;

	}

	@Transactional
	 public Orders save(Orders orders) {
	 orders = ordersRepository.save(orders);
	 YarnStock yarnStock = yarnStockRepository.findById(orders.getYarnId());
	 int stockInHand = yarnStock.getTotalStockInHand()-orders.getOrderedQuantity();
	 yarnStock.setTotalStockInHand(stockInHand);
	 yarnStockRepository.save(yarnStock);
	 return orders;
	}
}