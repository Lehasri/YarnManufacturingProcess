<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find SupplierCotton By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findsuppliercottonbyid">
				<div>
					<label for="supplierId">Supplier Id</label>
					<div>
						<form:input path="SupplierId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="cottonId">Cotton Id</label>
					<div>
						<form:input path="cottonId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="maximumSupplyQuantity">Maximum Supply Quantity</label>
					<div>
						<form:input path="maximumSupplyQuantity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="leadTime">Lead Time</label>
					<div>
						<form:input path="leadTime" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>