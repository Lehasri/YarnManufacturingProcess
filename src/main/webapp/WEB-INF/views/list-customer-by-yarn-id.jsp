<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Customer By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findyarnstockbyid">
				<div>
					<label for="yarnId">Yarn Id</label>
					<div>
						<form:input path="yarnId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="yarnStatus">Yarn Status</label>
					<div>
						<form:input path="yarnStatus" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="perDayProduction">Per Day Production</label>
					<div>
						<form:input path="perDayProduction" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="totalStockInHand">Total Stock In Hand</label>
					<div>
						<form:input path="totalStockInHand" readonly="true"/>
					</div>
				</div>
			</form:form>
			<div id="table root">
				<table border="2" width="100%" cellpadding="2">
					<thead>
						<tr>
							<th>Yarn Id</th>
							<th>Customer Id</th>
							<th>Name</th>
							<th>Address</th>
							<th>Phone No</th>
							<th>Email Id</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="customer" items="${allcustomers}">
							<tr>
								<td>${customer.yarnId}</td>
								<td>${customer.customerId}</td>
								<td>${customer.name}</td>
								<td>${customer.address}</td>
								<td>${customer.phoneNo}</td>
								<td>${customer.emailId}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</body>
</html>