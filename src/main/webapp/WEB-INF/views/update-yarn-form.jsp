<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Yarn</title>
<style type="text/css">
<%@include file="/WEB-INF/css/yarn-form.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Update Yarn Daily Production<a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updateyarn">
					<label for="productionDate">Production Date</label>
						<form:input path="productionDate" readonly="true" />
				    <label for="productionQuantity">Production Quantity</label>
						<form:input path="productionQuantity" class="text-box"
							placeholder="Enter a production quantity" title="Enter a number"
							maxlength="5" pattern="^([0-9]+\\.?[0-9]|\\.[0-9]+)$"
							required="true" />
					<label for="remarks">Remarks</label>
						<form:input path="remarks" class="text-box"
							placeholder="Enter a remarks"
							title="Remarks must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					<label for="cottonId">Cotton Id</label>
						<form:input path="cottonId" class="text-box"
							placeholder="Enter a cotton id" title="Enter a number"
							maxlength="5" pattern="^([0-9]+\\.?[0-9]|\\.[0-9]+)$"
							required="true" />
					<label for="quantityUsed">Quantity Used</label>
						<form:input path="quantityUsed" class="text-box"
							placeholder="Enter a quantity used" title="Enter a number"
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