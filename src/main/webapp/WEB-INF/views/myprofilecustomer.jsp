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
	width: 1303px;
	border: 1px lightgrey;
	padding: 25px;
	color: White;
	text-align:right;
	font-size: 20px;
}

.s {
	background-color: #7f85f5;
	Height: 462px;
	width: 19%;
	outline-color: black;
	padding: 10px;
	color: red;
	font-family: Century Gothic ";
	padding-left:180;
	text-align:center;
	margin-left:0px;
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
 .imgg {
   margin-left: 273px;
    height: 482px;
    margin-top: -482px;
    width: 1080px;
    margin-bottom: 18px;
}
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=profile >
	My Account <a href="/customer/customerindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right; margin-left: 20px;"></em></a>	
	</div>
		<div class=s>
		<div>
			<br> <a class="edit" href="/customer/updateform">Edit Account
				<hr>
			</a><br>
		</div>
		<div>
			<a class="list" href="/customer/findcustomerbyid">View
				<hr>
			</a><br>
		</div>
		</div>
		<div>
			<img src=https://i.pinimg.com/736x/4e/d0/aa/4ed0aace4331b8010814f6e4a94265bd.jpg
             alt="image" class="imgg"> 
		</div>
</body>
</html>