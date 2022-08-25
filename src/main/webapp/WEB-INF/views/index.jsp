<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
<style>
<%@include file="/WEB-INF/css/indexa.css"%>
</style>
</head>
<body>

	<h1>
		Yarn Manufacturing Process Tracking System
		<div>
			<div class="navbar">
				<div class="dropdown">
					<button class="dropbtn">
					  <b>Sign Up&emsp;</b> <em class="fa fa-caret-down"></em>
					</button>
					<div class="dropdown-content">
						<a href="/supplier/addform">Supplier </a> 
						<a	href="/customer/addform">Customer</a> 

					</div>
				</div>
			</div>

			
			<div class="navbar">
				<div class="dropdown">
					<button class="dropbtn">
						<b>Login &emsp;&emsp;</b> <em class="fa fa-caret-down"></em>
					</button>
					<div class="dropdown-content">
						<a href="/supplier/loginsupplier">Supplier</a> 
						<a href="/adminlogin/loginadmin">Admin</a> 
						<a href="/customer/logincustomer">Customer</a>

					</div>
				</div>
			</div>


		</div>
	</h1>
	<img alt="image"
		src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQDFRqiGeD03CVQuGZ3aJXOWrOWvtX3kxPDg&usqp=CAU"
		width="650px" height="460px" style="float: left">
	<br>
	<h2 class="ba">About</h2>
	<div class="ab">&emsp;&emsp;This website is for cotton
		suppliers,yarn manufactures and customers.Cotton Suppliers and yarn
		manufactures can upload their products. Yarn manufactures can give
		remarks for cotton.Customers can buy yarn products by using this
		website.</div>


</body>
</html>
