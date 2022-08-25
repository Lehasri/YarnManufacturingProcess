<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fetch Customer Form</title>
<style type="text/css">
* {
	font-family: cursive;
}

.background {
	line-height: 60px;
	width: 20%;
	margin: auto;
	margin-top: 147px;
	background-color: lightgrey;
	Height: 110px;
	width: 325px;
	outline-color: black;
	outline-style: dashed;
	padding: 75px;
	font-family: Century Gothic ";
	padding-left: 180;
	text-align: center;
}

.top {
	background-color: black;
	width: 1295px;
	border: 1px lightgrey;
	font-family: Century Gothic;
	padding: 26px;
	font-family: cursive;
	font-size: 20px;
	text-decoration: none;
	float: right;
	margin-top: 4px
}
</style>
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		<b>Fetch</b><a href="/supplier/cottonindex"><img alt="image" class=" float" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsxXTuxRJzWsUA0uiZKT-_79osm34J9fwZ9A&usqp=CAU"width="30px" height="30px"></a>
	</div>
	<br>
	<form action="/customer/findcustomerbyid" method="get"
		style="margin: 0;">
		<div class=background>
			<label>Enter Id</label> <input type="text" placeholder="customer id"
				name="id"> <input type='submit' value="Fetch" name="submit">
		</div>
	</form>

</body>
</html>