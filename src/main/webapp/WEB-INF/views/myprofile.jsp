
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
<%@include file="/WEB-INF/css/myprofile.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<div class=top>
		<div>
			My Account <a href="/supplier/cottonindex">
		</div>
		<div>
			<a href="/supplier/cottonindex"><em class="fa fa-home" style="font-size: 30px; color: white"></em></a>
		</div>
		</div>
		<br>
		<div class=s>
		<br>
			<div>
				<a class="list" href="/supplier/updateform?id=${Id}">Edit
					Account
					<hr>
				</a><br>
			</div>
			<div>
				<a class="create" href="/supplier/findform">View Account
					<hr>
				</a>
			</div>
		</div>
		<footer>
			<a href="/supplier/myindexpreviouscotton" class="previous background">&#8249;</a>
		</footer>
</body>
</html>