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
		<div>Stock List</div>
		<div><a href="/yarn/yarnindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table root">
	<table>
	<caption></caption>
			<thead>
				<tr>
					<th>Yarn Id</th>
					<th>Yarn Type</th>
					<th>Yarn Status</th>
					<th>Per Day Production</th>
					<th>Quantity</th>
					<th>Rate</th>
					<th>Total Stock In Hand</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="yarnstock" items="${allyarnstocks}">
					<tr>
						<td>${yarnstock.yarnId}</td>
						<td>${yarnstock.yarnType}</td>
						<td>${yarnstock.yarnStatus}</td>
						<td>${yarnstock.perDayProduction}</td>
						<td>${yarnstock.quantity}</td>
						<td>${yarnstock.rate}</td>
						<td>${yarnstock.totalStockInHand}</td>
						<td><a class=text href="updateform?id=${yarnstock.yarnId}">Edit</a></td>
						<td><a class=text
							href="deleteyarnstock?id=${yarnstock.yarnId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>