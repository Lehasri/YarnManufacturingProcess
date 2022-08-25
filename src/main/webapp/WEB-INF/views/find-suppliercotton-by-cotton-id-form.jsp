<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Cotton By Id</title>
<style>
<%@include file="/WEB-INF/css/cotton-suppliercotton-form.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top >
		Cotton Lead Time<a href="/supplier/cottonindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right;"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
	       
			<form:form class="form" action="" method="get" modelAttribute="fetchcottonbyid">
					<label for="cottonType">Cotton Type</label>
						<form:input path="cottonType" readonly="true"/>
					<label for="colour">Colour</label>
						<form:input path="colour" class="check-box"/>
					<label for="trashContent">Trash Content</label>
						<form:input path="trashContent" class="check-box"/>
					<label for="ginningPercentage">Ginning Percentage</label>
						<form:input path="ginningPercentage" class="check-box"/>
					<label for="stapleLength">Staple Length</label>
						<form:input path="stapleLength" />
					<label for="stapleLength">Micronaire</label>
						<form:input path="stapleLength" />
					<label for="ratePerTon">Rate Per Ton</label>
						<form:input path="ratePerTon" readonly="true"/>
			</form:form>
		
	
			<form:form action="" method="get" modelAttribute="findsuppliercotton">
				
					<label for="maximumSupplyQuantity">Maximum Supply Quantity</label>
						<form:input path="maximumSupplyQuantity" readonly="true"/>
					<label for="rate">Rate</label>
						<form:input path="rate" readonly="true"/>
					<label for="leadTime">Lead Time</label>
						<form:input path="leadTime" readonly="true"/>
			</form:form>
		</div>
		</div>
	
	<br>
	<footer>
		<a href="/supplier/myindexpreviousfetch"
			class="previous background">&#8249;</a>
	</footer>
</body>
</html>