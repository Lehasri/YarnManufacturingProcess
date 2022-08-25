package com.chainsys.yarnmanufacturingprocess.repository;


import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.AdminLogin;

public interface AdminLoginRepository extends CrudRepository<AdminLogin,Integer>  {
	AdminLogin save(AdminLogin adminLogin);
	AdminLogin findByEmailIdAndUserPassword(String emailId, String userPassword);
}
