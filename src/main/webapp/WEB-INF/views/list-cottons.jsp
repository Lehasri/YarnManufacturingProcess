<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cotton List</title>
</head>
<body>
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Cotton Id</th>
					<th>Cotton Type</th>
					<th>Colour</th>
					<th>Trash Content</th>
					<th>Ginning Percentage</th>
					<th>Staple Length</th>
					<th>Micronaire</th>
					<th>Rate Per Ton</th>
					<th>Stock In Hand</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cotton" items="${allcottons}">
					<tr>
						<td>${cotton.cottonId}</td>
						<td>${cotton.cottonType}</td>
						<td>${cotton.colour}</td>
						<td>${cotton.trashContent}</td>
						<td>${cotton.ginningPercentage}</td>
						<td>${cotton.stapleLength}</td>
						<td>${cotton.micronaire}</td>
						<td>${cotton.ratePerTon}</td>
						<td>${cotton.stockInHand}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>