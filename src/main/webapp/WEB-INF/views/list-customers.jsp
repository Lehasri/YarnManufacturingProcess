<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Customer List</title>
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
		<div>Customers List</div>
		<div><a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table-root">
	<table>
	<caption></caption>
			<thead>
				<tr>
					<th>Customer Id</th>
					<th>Name</th>
					<th>Door No</th>
					<th>Address Line 1</th>
					<th>Address Line 2</th>
					<th>City</th>
					<th>Pincode</th>
					<th>Phone No</th>
					<th>Email Id</th>
					<th>Delete</th>

				</tr>
			</thead>
			<tbody>
				<c:forEach var="customer" items="${allcustomers}">
					<tr>
						<td>${customer.customerId}</td>
						<td>${customer.name}</td>
						<td>${customer.doorNo}</td>
						<td>${customer.addressLine1}</td>
						<td>${customer.addressLine2}</td>
						<td>${customer.city}</td>
						<td>${customer.pincode}</td>
						<td>${customer.phoneNo}</td>
						<td>${customer.emailId}</td>
						<td><a class=text
							href="deletecustomer?id=${customer.customerId}"onclick="return confirm('Are you sure you want to delete customer ${customer.customerId} ?');"><button type="button" class="btn btn-danger">Delete</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>