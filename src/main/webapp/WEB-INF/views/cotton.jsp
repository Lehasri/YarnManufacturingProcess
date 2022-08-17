<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cotton</title>
<style>
.heading {
	background-color: black;
	width: 1280px;
	border: 1px lightgrey;
	font-family: Century Gothic ";
}

a {
	color: White;
	font-family: Century Gothic ";
	float: right;
}

* {
	font-family: cursive;
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
	padding-left: 180;
	text-align: center;
	margin-left:3px;
}

.list {
	color: Black;
	text-align: center;
	morgin: 20px;
	tab-size: 20;
	font-size: 20px;
	text-decoration: none;
}

.edit {
	color: Black;
	text-align: center;
	text-decoration: none;
	font-size: 20px;
}

.create {
	color: Black;
	text-align: center;
	text-decoration: none;
	font-size: 20px;
}

.dropdown {
	float: left;
	overflow: hidden;
}

.dropdown .dropbtn {
	font-size: 20px;
	border: none;
	outline: none;
	color: white;
	 padding: 17px 17px; 
	background-color: inherit;
	font-family: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	/* background-color: #fa6e6e;
 */
	
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: black;
	min-width: 160px;
	/*  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    z-index: 1; */
}

.dropdown-content a {
	float: none;
	color: white;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
	font-size: 18px;
}

.dropdown-content a:hover {
	 background-color: lightgrey; 
	text-color:black;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>



	<div class="navbar">
		<div class="dropdown">
			<button class="dropbtn" > 
				New <i class="fa fa-caret-down" style="color:white"></i>
			</button>
			<div class="dropdown-content">
				<a href="/cotton/addform">New Cotton</a> <br> <a
					href="/suppliercotton/addform">New Lead Time</a> <br>

			</div>
		</div>
	</div>
	<div class=heading
		style="padding: 35px; font-family: cursive; font-size: 20px">
		<a style="text-decoration: none; float: right"
			href="/supplierlogin/myProfileindex"><b>My Profile</b></a>
	</div>

	<div class=s>
		<div style="margin-top: 22px">
			<a class="edit" href="/cotton/list">Cotton Details
				<hr>
			</a><br>
		</div>
		<div>
			<a class="list" href="/suppliercotton/list">Lead Time Details
				<hr>
			</a><br>
		</div>
		<div>
			<a class="create" href="/yarn/findyarnform">Remarks
				<hr>
			</a><br>
		</div>

	</div>



</body>
</html>