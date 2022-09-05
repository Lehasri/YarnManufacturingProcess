<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>login form</title>
<style>
<%@include file="/WEB-INF/css/login.css"%>
body {
    background-image:
        url(https://media.istockphoto.com/photos/knitting-course-creative-hobby-leisure-threads-picture-id1199536345?b=1&k=20&m=1199536345&s=170667a&w=0&h=16pJT5HEmFCjkLQmZVPB4uXiS9GHaCTo4UWCmRRmAeY=);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
</head>
<body>
	<h2 class=login>Login<a href="/supplier/cottonindex"><em class="fa fa-home"
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
			<input class="moveleft background" type="submit" value="LOGIN" class="submit-btn" />
         </div>
		</form>
	</div>
	
</body>
</html>