<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Yarn Stock List</title>
<style>
<%@include file="/WEB-INF/css/listyarn.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top >
		<div>Products</div>
		<div><a href="/yarn/yarnindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table-root">
	<table>
	<caption></caption>
			<thead>
				<tr>
				<tr>
					<th>Yarn Type</th>
					<th>Quantity</th>
					<th>Rate</th>
					<th>Order</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="yarnstock" items="${allyarn}">
					<tr>
						<td>${yarnstock.yarnType}</td>
						<td>${yarnstock.quantity}</td>
						<td>${yarnstock.rate}</td>
						<td><a class=text
							href="/orders/addform?id=${yarnstock.yarnId}">Order</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>