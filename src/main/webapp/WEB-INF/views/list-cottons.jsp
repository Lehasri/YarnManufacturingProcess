<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Cotton List</title>
<style>
<%@include file="/WEB-INF/css/listyarn.css"%>
 body {
    background-image:
        url(https://st.depositphotos.com/10614052/54679/i/450/depositphotos_546796424-stock-photo-thread-spools-light-background.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top >
		<div>Cotton List</div>
		<div><a href="/supplier/cottonindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table root" class="center">
		<table>
		<caption></caption>
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
					<th>Edit</th>
					<th>Delete</th>
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
						<td><a class=text
							href="updateform?cottonid=${cotton.cottonId}">Edit</a></td>
						<td><a class=text
							href="deletecotton?cottonid=${cotton.cottonId}">Delete</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>