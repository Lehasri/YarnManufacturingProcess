<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Yarn Stock List</title>
<link rel = "stylesheet"
         href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
      <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
      <script src = "https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
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
		<div>Yarn Production List</div>
		<div><a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
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
					<th>Orders</th>
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
						<td><a class=text href="/orders/findorderbyyarnid?id=${yarnstock.yarnId}"><button type="button" class="btn btn-primary">Orders</button></a></td>
						<td><a class=text href="updateform?id=${yarnstock.yarnId}"><button type="button" class="btn btn-dark">Edit</button></a></td>
						<td><a class=text
							href="deleteyarnstock?id=${yarnstock.yarnId}"onclick="return confirm('Are you sure you want to delete stock ${customer.customerId} ?');"><button type="button" class="btn btn-danger">Delete</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>