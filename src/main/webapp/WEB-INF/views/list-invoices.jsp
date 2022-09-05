<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Invoice List</title>
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
		<div>Invoice List</div>
		<div><a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	</div>
	<br>
	<div id="table-root">
	<table>
	<caption></caption>
			<thead>
				<tr>
					<th>Invoice No</th>
					<th>Invoice Date</th>
					<th>Order Id</th>
					<th>Total Amount</th>
					<th>Payment Method</th>
					<th>Invoice Status</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="invoice" items="${allinvoices}">
					<tr>
						<td>${invoice.invoiceNo}</td>
						<td>${invoice.invoiceDate}</td>
						<td>${invoice.orderId}</td>
						<td>${invoice.totalAmount}</td>
						<td>${invoice.paymentMethod}</td>
						<td>${invoice.invoiceStatus}</td>
						<td><a class=text href="updateform?id=${invoice.invoiceNo}"><button type="button" class="btn btn-dark">Edit</button></a></td>
						<td><a class=text href="deleteinvoice?id=${invoice.invoiceNo}"onclick="return confirm('Are you sure you want to delete invoice ${invoice.invoiceNo} ?');"><button type="button" class="btn btn-danger">Delete</button></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>