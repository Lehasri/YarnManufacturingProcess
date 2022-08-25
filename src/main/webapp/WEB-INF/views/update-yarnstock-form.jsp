<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update YarnStock</title>
<style type="text/css">
<%@include file="/WEB-INF/css/yarnstock-form.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Stock Update<a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updateyarnstock">
				<label for="yarnType">Yarn Type</label>
						<form:input path="yarnType" class="text-box"
							placeholder="Enter a type of yarn"
							title="Type must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					<label for="yarnStatus">Yarn Status</label>
						<form:input path="yarnStatus" class="text-box"
							placeholder="Enter a status of yarn"
							title="Yarn status must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					<label for="perDayProduction">Per Day Production</label>
						<form:input path="perDayProduction" class="text-box"
							placeholder="Enter a quantity in percentage " title="Enter a valid production quantity"
							pattern="^[0-9-+()]*$" required="true" />
					<label for="quantity">Quantity</label>
						<form:input path="quantity" class="text-box"
							placeholder="Enter a quantity" title="Enter a number"
							maxlength="5" pattern="^([0-9]+\\.?[0-9]|\\.[0-9]+)$"
							required="true" />
					<label for="rate">Rate</label>
						<form:input path="rate" class="text-box"
							placeholder="Enter a rate" title="Enter a number"
							maxlength="5" pattern="^([0-9]+\\.?[0-9]|\\.[0-9]+)$"
							required="true" />
					<label for="totalStockInHand">Total Stock In Hand</label>
						<form:input path="totalStockInHand" class="text-box"
							placeholder="Enter a total stock" title="Enter a number"
							maxlength="5" pattern="^([0-9]+\\.?[0-9]|\\.[0-9]+)$"
							required="true" />
				<div class=movecenter>
					<form:button class="but hover">Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>