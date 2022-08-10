<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Supplier Cotton</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updatesuppliercotton">
				<div>
					<label for="supplierId">Supplier Id</label>
					<div>
						<form:input path="SupplierId" />
					</div>
				</div>
				<div>
					<label for="cottonId">Cotton Id</label>
					<div>
						<form:input path="cottonId" />
					</div>
				</div>
				<div>
					<label for="maximumSupplyQuantity">Maximum Supply Quantity</label>
					<div>
						<form:input path="maximumSupplyQuantity" />
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" />
					</div>
				</div>
				<div>
					<label for="leadTime">Lead Time</label>
					<div>
						<form:input path="leadTime" />
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