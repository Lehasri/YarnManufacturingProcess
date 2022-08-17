<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
* {
	font-family: cursive;
}
.profile {
	background-color: black;
	width: 1310px;
	border: 1px lightgrey;
	padding: 20px;
	color: White;
	text-align:right;
	font-size: 20px;
}

.s {
	background-color: lightgrey;
	Height: 464px;
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

</style>
</head>
<body>

	<div class=profile >
	<b>My Profile</b>	
	</div>
	<div class=s>
		<div style="margin-top: 20px">
			<a class="edit" href="/supplier/addform">Create Profile<hr></a><br>
		</div>
		<div >
			<a class="list" href="/supplier/modifyform">Edit Profile<hr> </a><br>
		</div>
		<div >
			<a class="create" href="/supplier/findform">View profile<hr> </a>
		</div>
	</div>

</body>
</html>