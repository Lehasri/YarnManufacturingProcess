package com.chainsys.yarnmanufacturingprocess.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.AdminLogin;
import com.chainsys.yarnmanufacturingprocess.repository.AdminLoginRepository;
    @Service
	public class AdminLoginService {
		@Autowired
		private AdminLoginRepository adminLoginRepository;

		public AdminLogin save(AdminLogin adminLogin) 
		{
			 return adminLoginRepository.save(adminLogin);
		}
		public AdminLogin getEmailIdUserPassword(String emailId, String userPassword) {
			return adminLoginRepository.findByEmailIdAndUserPassword(emailId, userPassword);
		}
		
	}



