<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Yarn List</title>
<style>
<%@include file="/WEB-INF/css/listyarn.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top >
		<div>Yarn Daily Production List</div>
		<div><a href="/yarn/yarnindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table-root">
	<table>
	<caption></caption>
			<thead>
				<tr>
					<th>Production Date</th>
					<th>Production Quantity</th>
					<th>Remarks</th>
					<th>Cotton Id</th>
					<th>Quantity Used</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="yarn" items="${allyarns}">
					<tr>
						<td>${yarn.productionDate}</td>
						<td>${yarn.productionQuantity}</td>
						<td>${yarn.remarks}</td>
						<td>${yarn.cottonId}</td>
						<td>${yarn.quantityUsed}</td>
						<td><a class=text href="updateform?yarnid=${yarn.cottonId}">Edit</a></td>
						<td><a class=text href="deleteyarn?yarnid=${yarn.cottonId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>