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

        document.getElementById("orderAmount").value = orderAmount;
        return orderAmount;
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
					<label for="yarnId">Yarn Id</label>
						<form:input path="yarnId" value="${yarnid.yarnId}" readonly="true"/>
					<label for="customerId">Customer Id</label>
						<form:input path="customerId"  class="text-box"
							placeholder="Enter a customer id" title="Enter a number"
							maxlength="5" pattern="^([0-9]+\\.?[0-9]|\\.[0-9]+)$"
							required="true"/>
					<label for="orderedCustomer">Name</label>
						<form:input path="orderedCustomer" class="text-box"
							placeholder="Enter a name"
							title="Name must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					<label for="orderedQuantity">Ordered Quantity</label>
						<form:input path="orderedQuantity" onchange="amountCalculate()"/>
					<label for="rate">Rate</label>
						<form:input path="rate" value="${yarnid.rate}"
							onchange="amountCalculate()" readonly="true"/>
					<label for="orderAmount">Order Amount</label>
						<form:input path="orderAmount"
							onchange="amountCalculate(this.form)" readonly="true"/>
					<label for="advance">Advance</label>
						<form:input path="advance"  class="text-box"
							placeholder="Enter a advance" title="Enter a number"
							maxlength="5" pattern="^([0-9]+\\.?[0-9]|\\.[0-9]+)$"
							required="true"/>
				<div class=movecenter>
					<form:button class="but hover">Add</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>