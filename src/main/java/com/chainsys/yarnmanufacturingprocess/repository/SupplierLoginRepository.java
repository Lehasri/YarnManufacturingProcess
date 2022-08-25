package com.chainsys.yarnmanufacturingprocess.repository;


import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.SupplierLogin;

public interface SupplierLoginRepository extends CrudRepository<SupplierLogin,Integer>  {
	SupplierLogin save(SupplierLogin supplierLogin);
	SupplierLogin findByEmailIdAndUserPassword(String emailId, String userPassword);
}
