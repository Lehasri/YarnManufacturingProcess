package com.chainsys.yarnmanufacturingprocess.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.Customer;
import com.chainsys.yarnmanufacturingprocess.repository.CustomerRepository;
    @Service
	public class CustomerService {
		@Autowired
		private CustomerRepository customerRepository;
		
		public Customer findById(int id) {
			return customerRepository.findById(id);
		}
		public Customer save(Customer customer) {
			 return customerRepository.save(customer);
		}
        public List<Customer>getAllCustomers()		{
		 List<Customer>listCustomer=customerRepository.findAll();
		 return listCustomer;
		}
		public void deleteById(int id)
		{
			customerRepository.deleteById(id);
		}
		public List<Customer> getCustomer(int id)
		{
			return customerRepository.findByYarnId(id);
		}
		
	}
