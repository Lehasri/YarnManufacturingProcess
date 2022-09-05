<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Cotton</title>
<style type="text/css">
<%@include file="/WEB-INF/css/cottonhome.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="heading">
		<div class="navbar">
			<div class="dropdown">
				<button class="dropbtn">
					Add On <em class="fa fa-caret-down"></em>
				</button>
				<div style="margin-top:60px" class="dropdown-content">
                <a href="/yarnstock/addform">Yarn Production</a> <br>
                <a href="/supplier/addform">Supplier</a> <br>
		        </div>
		    </div>
		<div class="account" style="width:55px">
			<div>
				<a href="/supplier/myindexprevious"><em class="fa fa-sign-out"
					style="font-size: 30px; color: white"> </em></a>
			</div>
		</div>
		</div>
	</div>
	<br>
	<div class="content">
	<div class=s>
		<div style="margin-top:30px">
			<a class="list" href="/yarnstock/list">Yarn production Details
				<hr>
			</a><br>
		</div>
		<div>
			<a class="create" href="/orders/list">Order Details
				<hr>
			</a><br>
		</div>
		<div>
			<a class="create" href="/invoice/list">Invoice Details
				<hr>
			</a><br>
		</div>
		<div>
			<a class="create" href="/supplier/list">Supplier Details
				<hr>
			</a><br>
		</div>
		<div>
			<a class="create" href="/customer/list">Customer Details
				<hr>
			</a><br>
		</div>
		</div>
	 
		<div>
			<img src="https://img.freepik.com/premium-photo/knitting-needles-lying-near-bunch-yarn-pastel-background_141856-146.jpg?w=2000"
 alt="image" class="imgg"> 
		</div>

	</div>
</body>
</html>