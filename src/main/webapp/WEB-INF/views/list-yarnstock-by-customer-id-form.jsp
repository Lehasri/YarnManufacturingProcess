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
			<form:form action="" method="get" modelAttribute="fetchcustomerbyid">
				<div>
					<label for="yarnId">Yarn Id</label>
					<div>
						<form:input path="yarnId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="customerId">Customer Id</label>
					<div>
						<form:input path="customerId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="firstName">First Name</label>
					<div>
						<form:input path="firstName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="lastName">Last Name</label>
					<div>
						<form:input path="lastName" readonly="true" />
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phoneNo">Phone No</label>
					<div>
						<form:input path="phoneNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" readonly="true" />
					</div>
				</div>
			</form:form>
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
				<c:forEach var="yarnstock" items="${listyarnstockbycustomerid}">
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
		</div>
	</div>
</body>
</html>