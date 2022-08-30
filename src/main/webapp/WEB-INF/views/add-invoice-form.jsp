<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="formA" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
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
	<div id="root">
		<div id="form">
			<formA:form action="add" method="post" modelAttribute="addinvoice">
					<label for="invoiceDate">Invoice Date</label>
						<formA:input path="invoiceDate" value="${orderid.orderDate}" readonly="true"/>
					<label for="orderId">Order Id</label>
						<formA:input path="orderId" value="${orderid.orderId}" readonly="true"/>
					<label for="totalAmount">Amount</label>
						<formA:input path="totalAmount" value="${orderid.advance}" readonly="true"/>
					<label for="paymentMethod">Payment Method</label>
						<select id="paymentMethod" name="paymentMethod" required="required">
						<option value=" " selected disabled>-select payment method-</option>
						<option value="cash">Cash</option>
						<option value="online">online payment</option>
						</select>
				<div class="movecenter">
					<formA:button class="but hover">Add</formA:button>
				</div>
			</formA:form>
		</div>
					 
				<div style="color:red">${result}</div>
	</div>
</body>
</html>