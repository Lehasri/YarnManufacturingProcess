<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Invoice</title>
<style type="text/css">
<%@include file="/WEB-INF/css/invoice-form.css"%>
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
		Update Invoice<a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updateinvoice">
					<label for="invoiceNo">Invoice No</label>
						<form:input path="invoiceNo" readonly="true"/>
					<label for="invoiceDate">Invoice Date</label>
						<form:input path="invoiceDate" readonly="true"/>
					<label for="orderId">Order Id</label>
						<form:input path="orderId" readonly="true"/>
					<label for="totalAmount">Total Amount</label>
						<form:input path="totalAmount" readonly="true"/>
					<label for="paymentMethod">Pay By</label>
						<form:input path="paymentMethod" readonly="true"/>
					<label for="invoiceStatus">Invoice Status</label>
						<select id="invoiceStatus" name="invoiceStatus" class="text-box" required="required">
						<option value="Paid">Paid</option>
						<option value="Not Paid">Not Paid</option>
						</select>
				<div class=movecenter>
					<form:button class="but hover">Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<footer>
		<a href="/invoice/invoicelist" class="background previous">&#8249;</a>
	</footer>
</body>
</html>