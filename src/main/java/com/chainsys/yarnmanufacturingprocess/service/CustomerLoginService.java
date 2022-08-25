package com.chainsys.yarnmanufacturingprocess.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.CustomerLogin;
import com.chainsys.yarnmanufacturingprocess.repository.CustomerLoginRepository;
    @Service
	public class CustomerLoginService {
		@Autowired
		private CustomerLoginRepository customerLoginRepository;

		public CustomerLogin save(CustomerLogin customerLogin) 
		{
			 return customerLoginRepository.save(customerLogin);
		}
		public CustomerLogin getEmailIdUserPassword(String emailId, String userPassword) {
			return customerLoginRepository.findByEmailIdAndUserPassword(emailId, userPassword);
		}
		
	}



