<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find Cotton Yarn By Id</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="fetchcottonbyid">
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
					<label for="micronaire">Micronaire</label>
					<div>
						<form:input path="micronaire" />
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
			<div id="table root">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Production Date</th>
					<th>Production Quantity</th>
					<th>Remarks</th>
					<th>Cotton Id</th>
					<th>Quantity Used</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="yarn" items="${allyarns}">
					<tr>
						<td>${yarn.productionDate}</td>
						<td>${yarn.productionQuantity}</td>
						<td>${yarn.remarks}</td>
						<td>${yarn.cottonId}</td>
						<td>${yarn.quantityUsed}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
		</div>
	</div>
</body>
</html>