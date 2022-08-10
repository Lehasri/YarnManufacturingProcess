<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Order By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findorderbyid">
			    <div>
					<label for="yarnId">Yarn Id</label>
					<div>
						<form:input path="yarnId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderDate">Order Date</label>
					<div>
						<form:input path="orderDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderedCustomer">Ordered Customer</label>
					<div>
						<form:input path="orderedCustomer" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderedQuantity">Ordered Quantity</label>
					<div>
						<form:input path="orderedQuantity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderAmount">Order Amount</label>
					<div>
						<form:input path="orderAmount" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="receivingDate">Receiving Date</label>
					<div>
						<form:input path="receivingDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="orderStatus">Order Status</label>
					<div>
						<form:input path="orderStatus" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="advance">Advance</label>
					<div>
						<form:input path="advance" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>