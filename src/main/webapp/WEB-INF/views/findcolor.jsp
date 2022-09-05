<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Find YarnStock By Color</title>
<style type="text/css">
<%@include file="/WEB-INF/css/findcolor.css"%>
body {
    background-image:
        url(https://www.kibrispdr.org/data/704/kerajinan-dari-benang-woll-59.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Product<a href="/customer/customerindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form class="form" action="" method="Get" modelAttribute="yarn" >
					<label for="yarnId">Yarn Id</label>
						<form:input path="yarnId" readonly="true"/>
					<label for="yarnType">Yarn Type</label>
						<form:input path="yarnType" readonly="true"/>
					<label for="color">Color</label>
						<form:input path="color" readonly="true"/>
					<label for="rate">Rate</label>
						<form:input path="rate" readonly="true"/><div class="kg">/kg</div>
					<a href="/orders/addform?yarnId=${yarn.yarnId}">Order</a>
				<%-- 	<form:button href="/orders/addform?" class="but hover">Order</form:button> --%>
			</form:form>
		</div>
		</div>
</body>
</html>