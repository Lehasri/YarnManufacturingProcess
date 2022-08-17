package com.chainsys.yarnmanufacturingprocess.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "supplier")
public class Supplier {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "supplier_id")
	@SequenceGenerator(name = "supplier_id", sequenceName = "supplier_id", allocationSize = 1)
	@Column(name = "supplier_id")
	private int supplierId;
	
	@Column(name = "first_name")
//	@Size(max = 20,min = 3,message = "*length should be 3 to 20")
//	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter a valid name ")
	private String firstName;
	
	@Column(name = "last_name")
//	@Size(max = 20,min = 3,message = "*length should be 3 to 20")
//	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter a valid name ")
	private String lastName;
	
	
	@Column(name = "door_no")
//	@NotBlank(message = "*Door no is required")
//	@Pattern(regexp="(\\d+\\s*(?:[A-Z](?![A-Z]))?)",message = "*Enter a valid door no")
	private int doorNo;
	
	@Column(name = "address_line_1")
//	@NotBlank(message = "*Address is required")
	private String addressLine1;
	
	@Column(name = "address_line_2")
//	@Pattern(regexp="^([a-zA-z0-9/\\\\''(),-\s]{2,255})$",message = "*Enter a valid address")
	private String addressLine2;
	
	@Column(name = "city")
//	@NotBlank(message = "*City is required")
	private String City;
	
	@Column(name = "pincode")
//	@NotBlank(message = "*Pincode is required")
	private int pincode;
	
	
	@Column(name = "phone_no")
	
//	@Digits(message="*Invalid Mobile Number",integer=10,fraction = 0)
	private long phoneNo;
	
	@Column(name = "email_id")
//	@NotBlank(message = "*Email is required")
//    @Email(message="*Invalid Email",regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String emailId;
	
	@Column(name = "bank_name")
//	@Size(max = 20,min = 3,message = "*length should be 3 to 20")
//	@NotBlank(message = "*Bank name is required")
//	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid bank name ")
	private String bankName;
	
	@Column(name = "account_number")
	private long accountNumber;
	
	@Column(name = "ifsc_code")
//	@NotBlank(message = "*ifsc number is required")
//	@Pattern(regexp = "^[A-Z]{4}0[A-Z0-9]{6}$",message = "*Enter valid ifsc code")
	private String ifscCode;

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
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

	
	

	public int getDoorNo() {
		return doorNo;
	}

	public void setDoorNo(int doorNo) {
		this.doorNo = doorNo;
	}

	public String getAddressLine1() {
		return addressLine1;
	}

	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}

	public String getAddressLine2() {
		return addressLine2;
	}

	public void setAddressLine2(String addressLine2) {
		this.addressLine2 = addressLine2;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
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
	public String getBankName() {
		return bankName;
	}

	public void setBankName(String bankName) {
		this.bankName = bankName;
	}

	public long getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(long accountNumber) {
		this.accountNumber = accountNumber;
	}
	public String getIfscCode() {
		return ifscCode;
	}

	public void setIfscCode(String ifscCode) {
		this.ifscCode = ifscCode;
	}

	
	

//	@Override
//	public String toString() // Default method
//	{
//		return String.format("%d, %s, %s, %s, %d, %s,%s", supplierId, firstName, lastName, address, phoneNo, emailId,
//				bankDetails);
//	}
}

