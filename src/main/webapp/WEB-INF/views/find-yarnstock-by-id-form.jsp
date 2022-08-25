<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find YarnStock By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findyarnstockbyid">
				<div>
					<label for="yarnId">Yarn Id</label>
					<div>
						<form:input path="yarnId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="yarnType">Yarn Type</label>
					<div>
						<form:input path="yarnType" />
					</div>
				</div>
				<div>
					<label for="yarnStatus">Yarn Status</label>
					<div>
						<form:input path="yarnStatus" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="perDayProduction">Per Day Production</label>
					<div>
						<form:input path="perDayProduction" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" />
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" />
					</div>
				</div>
				<div>
					<label for="totalStockInHand">Total Stock In Hand</label>
					<div>
						<form:input path="totalStockInHand" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>