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
<%@include file="/WEB-INF/css/customer-invoice-form.css"%>
body {
    background-image:
        url(https://www.kibrispdr.org/data/704/kerajinan-dari-benang-woll-59.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Add Invoice
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
					<label for="paymentMethod">Pay By</label>
						<select id="paymentMethod" name="paymentMethod" required="required">
						<option value="Cash">Cash</option>
						<option value="Online">online payment</option>
						</select>
				<div class="movecenter">
					<formA:button class="but hover" style="width:150px;">Generate Invoice</formA:button>
				</div>
			</formA:form>
		</div>
					 
				<div style="color:red">${result}</div>
	</div>
</body>
</html>