<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Invoice</title>
<style type="text/css">
<%@include file="/WEB-INF/css/invoice-form.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Add Invoice<a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div>${result}</div>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addinvoice">
					<label for="invoiceDate">Invoice Date</label>
						<form:input path="invoiceDate" value="${orderid.orderDate}" readonly="true"/>
					<label for="orderId">Order Id</label>
						<form:input path="orderId" value="${orderid.orderId}" readonly="true"/>
					<label for="totalAmount">Amount</label>
						<form:input path="totalAmount" value="${orderid.advance}" readonly="true"/>
					<label for="paymentMethod">Payment Method</label>
						<form:input path="paymentMethod"/>
						
				<div class=movecenter>
					<form:button class="but hover">Add</form:button>
				</div>
				<div>${result}</div>
			</form:form>
		</div>
	</div>
</body>
</html>