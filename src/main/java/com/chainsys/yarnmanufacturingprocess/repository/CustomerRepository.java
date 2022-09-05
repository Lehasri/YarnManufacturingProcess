package com.chainsys.yarnmanufacturingprocess.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.chainsys.yarnmanufacturingprocess.model.Customer;

public interface CustomerRepository extends CrudRepository<Customer,Integer>  {
	Customer findById(int id);
	Customer findByName(String customer);
	Customer save(Customer customer);
	void deleteById(int customerId);
	List <Customer> findAll();
	Customer findByEmailIdAndUserPassword(String emailId, String userPassword);
	
	
	  @Query(value="update customer set door_no=doorNo,address_line_1=addressLine1,address_line_2=addressLine2,city=city,pincode=pincode,phoneNumber=phone_number where customer_id=customerId"
	 ,nativeQuery=true)
	  public Customer getCustomer(String doorNo,String addressLine1,String addressLine2,String city,int pincode,long phoneNumber,int customerId);
	 
}
