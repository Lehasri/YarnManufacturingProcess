<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Cotton By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findcottonbyid">
				<div>
					<label for="cottonId">Cotton Id</label>
					<div>
						<form:input path="cottonId" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="cottonType">Cotton Type</label>
					<div>
						<form:input path="cottonType" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="colour">Colour</label>
					<div>
						<form:input path="colour" />
					</div>
				</div>
				<div>
					<label for="trashContent">Trash Content</label>
					<div>
						<form:input path="trashContent" />
					</div>
				</div>
				<div>
					<label for="ginningPercentage">Ginning Percentage</label>
					<div>
						<form:input path="ginningPercentage" />
					</div>
				</div>
				<div>
					<label for="stapleLength">Staple Length</label>
					<div>
						<form:input path="stapleLength" />
					</div>
				</div>
				<div>
					<label for="stapleLength">Micronaire</label>
					<div>
						<form:input path="stapleLength" />
					</div>
				</div>
				<div>
					<label for="ratePerTon">Rate Per Ton</label>
					<div>
						<form:input path="ratePerTon" readonly="true"/>
					</div>
				</div>
				<div>
					<label for="stockInHand">Stock In Hand</label>
					<div>
						<form:input path="stockInHand" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>