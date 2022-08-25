<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Invoice By Orders Id</title>
<style type="text/css">
<%@include file="/WEB-INF/css/order-invoice-form.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Invoice<a href="/customer/customerindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
				
			<form:form action="" method="get" modelAttribute="invoicedetail">
					<label for="invoiceNo">Invoice No</label>
						<form:input path="invoiceNo" readonly="true" />
					<label for="invoiceDate">Invoice Date</label>
						<form:input path="invoiceDate" readonly="true" />
					<label for="orderId">Order Id</label>
						<form:input path="orderId" readonly="true" />
					<label for="totalAmount">Total Amount</label>
						<form:input path="totalAmount" readonly="true" />
					<label for="paymentMethod">Payment Method</label>
						<form:input path="paymentMethod" readonly="true" />
			</form:form>

		</div>
	</div>
</body>
</html>