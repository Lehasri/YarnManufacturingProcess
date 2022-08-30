<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Order</title>
<script type="text/javascript">
    function amountCalculate() {
        var orderedQuantity = document.getElementById("orderedQuantity").value;
        var rate = document.getElementById("rate").value;
        var orderAmount = parseInt(orderedQuantity) * parseInt(rate);
        var advance = parseInt(orderAmount)*25/100;
        document.getElementById("orderAmount").value = orderAmount;
        document.getElementById("advance").value = advance;
    }

</script>
<style type="text/css">
<%@include file="/WEB-INF/css/order-form.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Order<a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addorder">
			<%-- <c:param name="var" items="yarned"></c:param>
			<c:out value="${var.yarnId}">${var.yarnId}</c:out> --%>
					<label for="yarnId">Yarn Id</label>
						<form:input path="yarnId" value="${yarnid.yarnId}" readonly="true"/>
					<label for="customerId">Customer Id</label>
						<form:input path="customerId"  readonly="true"/>
					<label for="name">Name</label>
						<form:input path="name" readonly="true"/>
					<label for="orderedQuantity">Ordered Quantity</label>
						<form:input path="orderedQuantity" />
					<label for="rate">Rate</label>
						<form:input path="rate" value="${yarnid.rate}" readonly="true"/>
					<label for="orderAmount">Order Amount</label>
						<form:input path="orderAmount"
							onclick="amountCalculate()" readonly="true"/>
					<label for="advance">Advance</label>
						<form:input path="advance" readonly="true"/>
				<div class=movecenter>
					<form:button class="but hover">Add</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>