<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Yarn List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Production Date</th>
					<th>Production Quantity</th>
					<th>Remarks</th>
					<th>Cotton Id</th>
					<th>Quantity Used</th>
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
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>