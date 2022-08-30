<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find YarnStock By Color</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="fetch" method="post" modelAttribute="yarncolor">
				<div>
					<label for="yarnId">Yarn Id</label>
					<div>
						<form:input path="yarnId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="yarnType">Yarn Type</label>
					<div>
						<form:input path="yarnType" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="color">Color</label>
					<div>
						<form:input path="color" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="quantity">Quantity</label>
					<div>
						<form:input path="quantity" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="rate">Rate</label>
					<div>
						<form:input path="rate" readonly="true"/>
					</div>
				</div>
				<div>
					<form:button class="but hover">Order</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>