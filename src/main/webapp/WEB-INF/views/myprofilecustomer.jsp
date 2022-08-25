<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	font-family: cursive;
}
.profile {
	background-color: black;
	width: 1300px;
	border: 1px lightgrey;
	padding: 25px;
	color: White;
	text-align:right;
	font-size: 20px;
}

.s {
	background-color: lightgrey;
	Height: 462px;
	width: 19%;
	outline-color: black;
	outline-style: dashed;
	padding: 10px;
	color: red;
	font-family: Century Gothic ";
	padding-left:180;
	text-align:center;
	margin-left:3px;
}

.list {
	color: Black;
	text-align:center;
	morgin:20px;
	tab-size: 20;
	font-size:20px;
	text-decoration:none;
}

.edit {
	color: Black;
	text-align:center;
	text-decoration:none;
	font-size:20px;
	
}
.create{
	color: Black;
	text-align:center;
	text-decoration:none;
	font-size:20px;
}

.background:hover {
	background-color: lightgrey;
	color: black;
}

.previous {
	background-color: black;
	color: white;
	border-radius: 50%;
	float:left;
	margin-top:16px;
	text-decoration: none;
	padding: 5px 16px; 
}
</style>
</head>
<body>

	<div class=profile >
	<b>My Account</b>	
	</div>
	<div class=s>
		<div style="margin-top: 20px">
			<a class="edit" href="/customer/addform">Create Account<hr></a><br>
		</div>
		<div >
			<a class="list" href="/customer/modifyform">Edit Account<hr> </a><br>
		</div>
		<div >
			<a class="create" href="/customer/findform">View Account<hr> </a>
		</div>
	</div>
<footer>	 <a href="/customerlogin/myProfileindex" class="previous background">&#8249;</a> </footer>
</body>
</html>