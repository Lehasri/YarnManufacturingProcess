package com.chainsys.yarnmanufacturingprocess.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="customer")
public class Customer {
	@Column(name="yarn_id")
	private int yarnId;
	@Id
	@Column(name="customer_id")
	private int customerId;
	@Column(name="first_name")
	private String firstName; 
	@Column(name="last_name")
	private String lastName;
	@Column(name="address")
	private String address;
	@Column(name="phone_no")
	private long phoneNo;     
	@Column(name="email_id")
	private String emailId; 
	
	public int getYarnId() {
		return yarnId;
	}
	public void setYarnId(int yarnId) {
		this.yarnId = yarnId;
	}
	public int getCustomerId() {
		return customerId;
	}
	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public long getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(long phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	@Override
	public String toString() // Default method
    {
		return String.format("%d, %s, %s, %s, %d, %s",customerId,firstName,lastName,address,phoneNo,emailId);
 	}
	
	
	
}
