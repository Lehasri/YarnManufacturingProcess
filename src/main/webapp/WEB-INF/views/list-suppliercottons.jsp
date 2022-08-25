<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Supplier Cotton List</title>
<style>
<%@include file="/WEB-INF/css/listcotton.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Lead Time List<a href="/supplier/cottonindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	<br>
	<div id="table root" class=center>
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Supplier Id</th>
					<th>Cotton Id</th>
					<th>Maximum Supply Quantity</th>
					<th>Rate</th>
					<th>Lead Time</th>
					<th>Edit</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="suppliercotton" items="${allsuppliercottons}">
					<tr>
						<td>${suppliercotton.supplierId}</td>
						<td>${suppliercotton.cottonId}</td>
						<td>${suppliercotton.maximumSupplyQuantity}</td>
						<td>${suppliercotton.rate}</td>
						<td>${suppliercotton.leadTime}</td>
						<td><a class=text href="updateform?supplierId=${suppliercotton.supplierId}&cottonId=${suppliercotton.cottonId}">Edit</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>