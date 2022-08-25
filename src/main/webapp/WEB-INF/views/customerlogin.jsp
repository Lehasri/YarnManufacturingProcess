<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>login form</title>
<style>
<%@include file="/WEB-INF/css/login.css"%>
</style>
</head>
<body>
	<h2 class=login>Login<a href="/customer/customerindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></h2>
	
	<div class="login-wrapper">
		<form action="checkuserlogin" method="post" modelAttribute="log">
		<div class=s>
         <img alt="image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqJ0rLOdjj19gDwDaBK6IBxPbXxc0Cr_bd792mH6I&s">
			<div>
				<label for="emailId">User Id </label><br> <input class=a
					type="text" name="emailId" id="emailId" />

			</div>
			<div class="input-group">
				<label for="userPassword">Password</label><br> <input class=a
					type="password" name="userPassword" id="userPassword" />
			</div>
			<input class="movecenter background" type="submit" value="LOGIN" class="submit-btn" />
         </div>
		</form>
	</div>
	
</body>
</html>