<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Invoice List</title>
<style>
<%@include file="/WEB-INF/css/listyarn.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top >
		<div>Invoice List</div>
		<div><a href="/yarn/yarnindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table-root">
	<table>
	<caption></caption>
			<thead>
				<tr>
					<th>Invoice No</th>
					<th>Invoice Date</th>
					<th>Order Id</th>
					<th>Total Amount</th>
					<th>Payment Method</th>
					<th>Invoice Status</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="invoice" items="${allinvoices}">
					<tr>
						<td>${invoice.invoiceNo}</td>
						<td>${invoice.invoiceDate}</td>
						<td>${invoice.orderId}</td>
						<td>${invoice.totalAmount}</td>
						<td>${invoice.paymentMethod}</td>
						<td>${invoice.invoiceStatus}</td>
						<td><a class=text href="updateform?id=${invoice.invoiceNo}">Edit</a></td>
						<td><a class=text href="deleteinvoice?id=${invoice.invoiceNo}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>