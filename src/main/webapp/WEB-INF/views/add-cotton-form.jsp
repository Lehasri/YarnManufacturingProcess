<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Cotton</title>
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
			<form:form class="form" action="add" method="post" modelAttribute="addcotton">
				<div>
					<label for="cottonId">Cotton Id</label>
					<div>
						<form:input path="cottonId" />
					</div>
				</div>
				<div>
					<label for="cottonType">Cotton Type</label>
					<div>
						<form:input path="cottonType" />
					</div>
				</div>
				<div>Cotton Quality</div>
				<div>
					<label for="colour">Colour </label>
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
						<form:input path="ratePerTon" />
					</div>
				</div>
				<div>
					<label for="stockInHand">Stock In Hand</label>
					<div>
						<form:input path="stockInHand" />
					</div>
				</div>
				<div>
					<form:button>Add</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>