<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Yarn By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findyarnbyid">
				<div>
					<label for="productionDate">Production Date</label>
					<div>
						<form:input path="productionDate" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="productionQuantity">Production Quantity</label>
					<div>
						<form:input path="productionQuantity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="remarks">Remarks</label>
					<div>
						<form:input path="remarks" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="cottonId">Cotton Id</label>
					<div>
						<form:input path="cottonId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="quantityUsed">Quantity Used</label>
					<div>
						<form:input path="quantityUsed" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>