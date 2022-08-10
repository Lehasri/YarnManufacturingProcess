<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Cotton By Id</title>
<style>type="text/css">
.form {
	trxt-align: center;
}

.check-box {
	margin-left: 20px;
}
</style>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form class="form" action="" method="get" modelAttribute="fetchcottonbyid">
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
						<form:input path="colour" class="check-box"/>
					</div>
				</div>
				<div>
					<label for="trashContent">Trash Content</label>
					<div>
						<form:input path="trashContent" class="check-box"/>
					</div>
				</div>
				<div>
					<label for="ginningPercentage">Ginning Percentage</label>
					<div>
						<form:input path="ginningPercentage" class="check-box"/>
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
			<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Supplier Id</th>
					<th>Cotton Id</th>
					<th>Maximum Supply Quantity</th>
					<th>Rate</th>
					<th>Lead Time</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="suppliercotton" items="${listsuppliercottonbycottonid}">
					<tr>
						<td>${suppliercotton.supplierId}</td>
						<td>${suppliercotton.cottonId}</td>
						<td>${suppliercotton.maximumSupplyQuantity}</td>
						<td>${suppliercotton.rate}</td>
						<td>${suppliercotton.leadTime}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
		</div>
	</div>
</body>
</html>