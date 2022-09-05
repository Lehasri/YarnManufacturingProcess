<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Supplier List</title>
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
	<div style="width:1349px"class=top >
		<div>Suppliers List</div>
		<div><a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table-root">
	<table>
	<caption></caption>
			<thead>
				<tr>
					<th>Supplier Id</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Door No</th>
					<th>Address Line 1</th>
					<th>Address Line 2</th>
					<th>City</th>
					<th>Pincode</th>
					<th>Phone No</th>
					<th>Email Id</th>
					<th>Bank Name</th>
					<th>Account Number</th>
					<th>IFSC Code</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="supplier" items="${allsuppliers}">
					<tr>
						<td>${supplier.supplierId}</td>
						<td>${supplier.firstName}</td>
						<td>${supplier.lastName}</td>
						<td>${supplier.doorNo}</td>
						<td>${supplier.addressLine1}</td>
						<td>${supplier.addressLine2}</td>
						<td>${supplier.city}</td>
						<td>${supplier.pincode}</td>
						<td>${supplier.phoneNo}</td>
						<td>${supplier.emailId}</td>
						<td>${supplier.bankName}</td>
						<td>${supplier.accountNumber}</td>
						<td>${supplier.ifscCode}</td>
						<td><a class=text href="updateform?id=${supplier.supplierId}"><button type="button" class="btn btn-dark">Edit</button></a></td>
						<td><a class=text
							href="deletesupplier?id=${supplier.supplierId}"onclick="return confirm('Are you sure you want to delete supplier ${supplier.supplierId} ?');"><button type="button" class="btn btn-danger">Delete</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>