<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>login form</title>
<style>
<%@include file="/WEB-INF/css/customerlogin.css"%>
body {
    background-image:
        url(https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
</head>
<body>
	<h2 class=login>Login<a href="/customer/customerindex"><em class="fa fa-home"
		style="font-size: 30px;float:right; color: white;"></em></a></h2>
	
	<div class="login-wrapper">
		<form action="checkuserlogin" method="post" modelAttribute="log">
		<div class=s>
         <img alt="image" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFHxFtLgn3mc5sNT2CvnnKW1rRUlo7Oip-0NCs-8_j_yXgT3oi0IaTQpCw6TiT4Y_Sb6Y&usqp=CAU" width="100px" height="100px">
			<div style="color:red" >${result}</div>
			<div>
				<label for="emailId">User Id </label><br> <input class=a
					type="text" name="emailId" id="emailId" />

			</div>
			<div class="input-group">
				<label for="userPassword">Password</label><br> <input class=a
					type="password" name="userPassword" id="userPassword" />
			</div>
			<div style="margin-top:16px">
			<div><input style="float:left" class="movecenter background" type="submit" value="LOGIN" class="submit-btn" /></div>
			<div><a href="/customer/addform" ><input style="float:right" class="move"  value="NEW REGISTER" class="submit-btn" /></a></div>
           </div>
         </div>
		</form>
	</div>
	<footer>
			<a href="/customer/index" class="previous background">&#8249;</a>
	</footer>
</body>
</html>