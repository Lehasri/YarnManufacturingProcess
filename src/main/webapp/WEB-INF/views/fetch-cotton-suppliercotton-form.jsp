<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Cotton Form</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style type="text/css">
<%@include file="/WEB-INF/css/fetch.css"%>
</style>
</head>
<body>
	<div class=top>
		Fetch<a href="/supplier/cottonindex"><em class="fa fa-home" style="font-size: 30px;float:right; color: white"></em></a>
	</div>
	<br>
	<form action="/suppliercotton/getcottondetails" method="get"
		style="margin: 0;">
		<div class=heading>
			<label>Enter Id</label> <input type="text" placeholder="cotton id"
				name="id"> <input class="but hover" type='submit' value="Fetch" name="submit">
		</div>
	</form>
</body>
</html>