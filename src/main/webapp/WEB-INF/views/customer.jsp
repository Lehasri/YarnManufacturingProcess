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
		<div class="account" style="width:55px">
			<div>
				<a href="/supplier/myindexprevious"><em class="fa fa-sign-out"
					style="font-size: 30px; color: white"> </em></a>
			</div>
		</div>
	</div>
	<br>
	<div class="content">
	<div class=s style="width: fit-content;">
		<div>
			<br> <a class="edit" href="/yarnstock/status">Products
				<hr>
			</a><br>
		</div>
		<div>
			<a class="list" href="/orders/findproductform">My Orders
				<hr>
			</a><br>
		</div>
		</div>
	</div>
</body>
</html>