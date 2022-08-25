<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Supplier Modify Form</title>
<style type="text/css">
* {
	font-family: cursive;
}

.header {
	width: 20%;
	margin: auto;
	margin-top: 147px;
	background-color: lightgrey;
	Height: 85px;
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

.background:hover {
	background-color: lightgrey;
	color: black;
}

.previous {
	background-color: black;
	color: white;
	border-radius: 50%;
	margin-top:171px;
	float: left;
	text-decoration: none;
	padding: 5px 16px;
}

.hover:hover {
	background-color: lightgrey;
	color: black;
}

.but {
	background-color: black;
	color: white;
	margin-left: 77px;
	width: 70px;
	height: 30px;
	margin-top: 31px;
	margin-left:10px
}

.float {
	float: right;
}
</style>
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		<b>Fetch</b><a href="/supplier/cottonindex"><img class=" float" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsxXTuxRJzWsUA0uiZKT-_79osm34J9fwZ9A&usqp=CAU"width="30px" height="30px"></a>
	</div>
	<br>
	<form action="/supplier/updateform" method="get" style="margin: 0;">
		<div class=header>
			<label>Enter Id</label> <input type="text" placeholder="supplier id"
				name="id"> <input class="but hover" type='submit' value="Submit" name="submit">
		</div>
	</form>
	<footer>
		<a href="/supplier/mypreviousprofileform" class="background previous">&#8249;</a>
	</footer>
</body>
</html>