<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Supplier Cotton</title>
<style>
<%@include file="/WEB-INF/css/suppliercotton-form.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class=top>
		Lead Time<a href="/supplier/cottonindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatesuppliercotton">
					<label for="supplierId">Supplier Id</label>
						<form:input type="text" name="supplierId" path="supplierId" readonly="true"/>
					<label for="cottonId">Cotton Id</label>
						<form:input type="text" name="cottonId" path="cottonId" readonly="true"/>
					<label for="maximumSupplyQuantity">Maximum Supply Quantity</label>
						<form:input type="text" name="maximumSupplyQuantity" path="maximumSupplyQuantity"/>
					<label for="rate">Rate</label>
						<form:input type="text" name="rate" path="rate" />
					<label for="leadTime">Lead Time</label>
						<form:input type="datetime-local" path="leadTime" name="leadTime"/>
				<div class=movecenter>
					<input class="but hover" type="submit" value=Update name="submit">
				</div>
			</form:form>
		</div>
	</div>
	<br>
	<footer>
		<a href="/suppliercotton/leadlist" class="previous background">&#8249;</a>
	</footer>
</body>
</html>