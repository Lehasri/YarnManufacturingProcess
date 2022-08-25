<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Order By Id</title>
<style type="text/css">
* {
	font-family: cursive;
}

#root {
	line-height: 30px;
	width: 20%;
	margin: auto;
	margin-top: 147px;
	background-color: lightgrey;
	Height: 564px;
	width: 364px;
	outline-color: black;
	outline-style: dashed;
	padding: 75px;
	font-family: Century Gothic ";
	padding-left: 180;
	text-align: center;
}

.movecenter {
	margin-left: 77px;
}

.background:hover {
	background-color: lightgrey;
	color: black;
}

.previous {
	background-color: black;
	color: white;
	border-radius: 50%;
	float: left;
	/* margin-left:-30px
	margin-top: -47px; */
	text-decoration: none;
	padding: 5px 16px;
}

.top {
	background-color: black;
	width: 1278px;
	border: 1px lightgrey;
	font-family: Century Gothic;
	padding: 26px;
	font-family: cursive;
	font-size: 20px;
	text-decoration: none;
	float: right;
	margin-top: 4px
}
</style>

</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		<b>My Order</b><a href="/supplier/cottonindex"><img class=" float" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsxXTuxRJzWsUA0uiZKT-_79osm34J9fwZ9A&usqp=CAU"width="30px" height="30px"></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="yarnstockdetail">
				<div>
					<label for="yarnType">Yarn Type</label>
					<div>
						<form:input path="yarnType" readonly="true" />
					</div>
				</div>
			</form:form>
			<form:form action="" method="get" modelAttribute="orderdetail">

				<div>
					<label for="orderId">Order Id</label>
					<div>
						<form:input path="orderId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="orderDate">Order Date</label>
					<div>
						<form:input path="orderDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="orderedCustomer">Name</label>
					<div>
						<form:input path="orderedCustomer" readonly="true" />
					</div>
				</div>
				<div>
					<label for="orderedQuantity">Ordered Quantity</label>
					<div>
						<form:input path="orderedQuantity" readonly="true" />
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="orderAmount">Order Amount</label>
					<div>
						<form:input path="orderAmount" readonly="true" />
					</div>
				</div>
				<div>
					<label for="receivingDate">Receiving Date</label>
					<div>
						<form:input path="receivingDate" readonly="true" />
					</div>
				</div>
				<div>
					<label for="advance">Advance</label>
					<div>
						<form:input path="advance" readonly="true" />
					</div>
				</div>
			</form:form>

		</div>
	</div>
</body>
</html>