package com.chainsys.yarnmanufacturingprocess.repository;


import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.CustomerLogin;

public interface CustomerLoginRepository extends CrudRepository<CustomerLogin,Integer>  {
	CustomerLogin save(CustomerLogin adminLogin);
	CustomerLogin findByEmailIdAndUserPassword(String emailId, String userPassword);
}
