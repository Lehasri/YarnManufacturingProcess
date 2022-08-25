<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Cotton By Id</title>
<style>
<%@include file="/WEB-INF/css/remarks.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div class=top>
		Remarks<a href="/supplier/cottonindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></div>
	<br>
	<div id="root">
		<div id="form">
			<form:form class="form" action="" method="get" modelAttribute="cottondetail">
				<div>
					<label for="cottonType">Cotton Type</label>
					<div>
						<form:input path="cottonType" readonly="true"/>
					</div>
				</div>
				
			</form:form>
			
			<form:form action="" method="get" modelAttribute="yarndetail">
				
				<div>
					<label for="remarks">Remarks</label>
					<div>
						<form:input path="remarks" readonly="true"/>
					</div>
				</div>
			</form:form>
		</div>
	</div>
	<footer>
		<a href="/cotton/myindexpreviousfetch" class="previous background">&#8249;</a>
	</footer>
</body>
</html>