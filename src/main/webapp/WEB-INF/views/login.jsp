<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login form</title>
<style>
.login-wrapper{
    line-height:30px;
	width: 20%;
	margin: auto;
	margin-left: auto;
	margin-right: auto;
	margin-top: 10%;
	}
.submit-btn{
margin-left : 60px;
}	
h2{
margin-left : 60px;
}
.a{
border-left:none;
border-right:none;
border-top:none;
outline:none;
}
.login {
	background-color: black;
	width: 1280px;
	border: 1px lightgrey;
	padding: 20px;
	color: White;
	font-family: Century Gothic ";
}
body
{
/*  background-color: #ff9900; */
 /*  background-image:
        url(https://media.istockphoto.com/vectors/blue-turquoise-blurred-abstract-background-design-graphic-vector-vector-id819665724?k=20&m=819665724&s=612x612&w=0&h=sicloEPA0LALRc8LFUNyDwmQTyPZoDGa0ct7IyzhxuQ=); */
  background-size: cover
 }
* {
	font-family: cursive;
}
</style>
</head>
<body>
<h2 class=login>Login</h2>
	<div class="login-wrapper">
	<form action="checkuserlogin" method="post" modelAttribute="log">
			
			<div>
			<label for="emailId">User Id </label><br>
				<input  class=a  type="text" name="emailId" id="emailId" /> 
					
			</div>
			<div class="input-group">
			<label for="userPassword">Password</label><br>
				<input class=a
				type="password" name="userPassword" id="userPassword"/> 	 
			</div>
			<input type="submit" value="Login" class="submit-btn" />
		</form>
	</div>
</body>
</html>