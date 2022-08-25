<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Invoice By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findinvoicebyid">
				<div>
					<label for="invoiceNo">Invoice No</label>
					<div>
						<form:input path="invoiceNo" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="invoiceDate">Invoice Date</label>
					<div>
						<form:input path="invoiceDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="totalAmount">Total Amount</label>
					<div>
						<form:input path="totalAmount" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="paymentMethod">Payment Method</label>
					<div>
						<form:input path="paymentMethod" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="invoiceStatus">Invoice Status</label>
					<div>
						<form:input path="invoiceStatus" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>