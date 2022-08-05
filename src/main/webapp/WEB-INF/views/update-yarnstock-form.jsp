<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update YarnStock</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post" modelAttribute="updateyarnstock">
				<div>
					<label for="yarnId">Yarn Id</label>
					<div>
						<form:input path="yarnId" />
					</div>
				</div>
				<div>
					<label for="yarnStatus">Yarn Status</label>
					<div>
						<form:input path="yarnStatus" />
					</div>
				</div>
				<div>
					<label for="perDayProduction">Per Day Production</label>
					<div>
						<form:input path="perDayProduction" />
					</div>
				</div>
				<div>
					<label for="totalStockInHand">Total Stock In Hand</label>
					<div>
						<form:input path="totalStockInHand" />
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