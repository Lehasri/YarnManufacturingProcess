<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Find Customer By Id</title>
<style>
* {
	font-family: cursive;
}

#root {
	line-height: 30px;
	width: 20%;
	margin: auto;
	margin-top: 147px;
	background-color: lightgrey;
	Height: 499px;
	width: 414px;
	outline-color: black;
	outline-style: dashed;
	padding: 75px;
	font-family: Century Gothic ";
	padding-left: 180;
	text-align: center;
}

.movecenter {
	margin-left: 77px;
}

.background:hover {
	background-color: lightgrey;
	color: black;
}

.previous {
	background-color: black;
	color: white;
	border-radius: 50%;
	float: left;
	/* margin-left:-30px
	margin-top: -47px; */
	text-decoration: none;
	padding: 5px 16px;
}

.top {
	background-color: black;
	width: 1278px;
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
		<b>View Account</b><a href="/supplier/cottonindex"><img class=" float" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsxXTuxRJzWsUA0uiZKT-_79osm34J9fwZ9A&usqp=CAU"width="30px" height="30px"></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="" method="get" modelAttribute="findcustomerbyid">
				<div>
					<label for="name">Name</label>
					<div>
						<form:input path="name" class="text-box"
							placeholder="Enter a name"
							title="Name must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					</div>
				</div>
				<div>
					<label for="doorNo">Door No</label>
					<div>
						<form:input path="doorNo" required="true" readonly="true" />
					</div>
				</div>
				<div>
					<label for="addressLine1">Address Line 1</label>
					<div>
						<form:input path="addressLine1" readonly="true" />
					</div>
				</div>
				<div>
					<label for="addressLine2">Address Line 2</label>
					<div>
						<form:input path="addressLine1" readonly="true" />
					</div>
				</div>
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" readonly="true" />
					</div>
				</div>
				<div>
					<label for="pincode">Pincode</label>
					<div>
						<form:input path="pincode" readonly="true" />
					</div>
				</div>
				<div>
					<label for="phoneNo">Phone No</label>
					<div>
						<form:input path="phoneNo" readonly="true" />
					</div>
				</div>
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" readonly="true" />
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>