<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Yarn</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updateyarn">
				<div>
					<label for="productionDate">Production Date</label>
					<div>
						<form:input path="productionDate" />
					</div>
				</div>
				<div>
					<label for="productionQuantity">Production Quantity</label>
					<div>
						<form:input path="productionQuantity" />
					</div>
				</div>
				<div>
					<label for="remarks">Remarks</label>
					<div>
						<form:input path="remarks" />
					</div>
				</div>
				<div>
					<label for="cottonId">Cotton Id</label>
					<div>
						<form:input path="cottonId" />
					</div>
				</div>
				<div>
					<label for="quantityUsed">Quantity Used</label>
					<div>
						<form:input path="quantityUsed" />
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