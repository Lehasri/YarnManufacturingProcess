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

	public List<Customer> getAllCustomers() {
		return customerRepository.findAll();
	}

	public void deleteById(int id) {
		customerRepository.deleteById(id);
	}

	public Customer getEmailIdUserPassword(String emailId, String userPassword) {
		return customerRepository.findByEmailIdAndUserPassword(emailId, userPassword);
	}

	public Customer getName(String customer) {
		return customerRepository.findByName(customer);
	}

	public Customer getCustomer(String doorNo, String addressLine1, String addressLine2, String city, int pincode,
			long phoneNumber,int customerId) {
		return customerRepository.getCustomer(doorNo, addressLine1, addressLine2, city, pincode, phoneNumber,customerId);
	}

}
