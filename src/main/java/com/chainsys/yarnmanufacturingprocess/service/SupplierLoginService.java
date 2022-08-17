package com.chainsys.yarnmanufacturingprocess.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.yarnmanufacturingprocess.model.SupplierLogin;
import com.chainsys.yarnmanufacturingprocess.repository.SupplierLoginRepository;
    @Service
	public class SupplierLoginService {
		@Autowired
		private SupplierLoginRepository supplierLoginRepository;

		public SupplierLogin save(SupplierLogin supplierLogin) {
			 return supplierLoginRepository.save(supplierLogin);
		}
		public SupplierLogin getEmailIdUserPassword(String emailId, String userPassword) {
			return supplierLoginRepository.findByEmailIdAndUserPassword(emailId, userPassword);
		}
		
	}



