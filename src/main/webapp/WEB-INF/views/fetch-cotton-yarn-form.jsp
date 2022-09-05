<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fetch Cotton Yarn Form</title>
<style type="text/css">
<%@include file="/WEB-INF/css/fetch.css"%>
</style>
</head>
<body>
	<div class=top>
		Fetch<a href="/supplier/cottonindex"><img alt="image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsxXTuxRJzWsUA0uiZKT-_79osm34J9fwZ9A&usqp=CAU"></a>
	</div>
	<br>
	<form action="/yarn/getcottonremarks" method="get" style="margin: 0;">
		<div class=heading>
			<label>Enter Id</label> <input type="text" placeholder="cotton id"
				name="id"> <input type='submit' value="Fetch" name="submit">
		</div>
	</form>
</body>
</html>