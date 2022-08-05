<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Yarn Stock List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Yarn Id</th>
					<th>Yarn Status</th>
					<th>Per Day Production</th>
					<th>Total Stock In Hand</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="yarnstock" items="${allyarnstocks}">
					<tr>
						<td>${yarnstock.yarnId}</td>
						<td>${yarnstock.yarnStatus}</td>
						<td>${yarnstock.perDayProduction}</td>
						<td>${yarnstock.totalStockInHand}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>