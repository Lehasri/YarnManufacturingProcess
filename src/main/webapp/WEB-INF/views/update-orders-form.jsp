<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Orders</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updateorders">
				<div>
					<label for="yarnId">Yarn Id</label>
					<div>
						<form:input path="yarnId" />
					</div>
				</div>
				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" />
					</div>
				</div>
				<div>
					<label for="orderDate">Order Date</label>
					<div>
						<form:input path="orderDate" />
					</div>
				</div>
				<div>
					<label for="orderedCustomer">Ordered Customer</label>
					<div>
						<form:input path="orderedCustomer" />
					</div>
				</div>
				<div>
					<label for="orderedQuantity">Ordered Quantity</label>
					<div>
						<form:input path="orderedQuantity" />
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" />
					</div>
				</div>
				<div>
					<label for="orderAmount">Order Amount</label>
					<div>
						<form:input path="orderAmount" />
					</div>
				</div>
				<div>
					<label for="receivingDate">Receiving Date</label>
					<div>
						<form:input path="receivingDate" />
					</div>
				</div>
				<div>
					<label for="orderStatus">Order Status</label>
					<div>
						<form:input path="orderStatus" />
					</div>
				</div>
				<div>
					<label for="advance">Advance</label>
					<div>
						<form:input path="advance" />
					</div>
				</div>
					<div>
					<label for="invoiceNo">Invoice No</label>
					<div>
						<form:input path="invoiceNo" />
					</div>
				</div>
				<div>
					<form:button>Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>