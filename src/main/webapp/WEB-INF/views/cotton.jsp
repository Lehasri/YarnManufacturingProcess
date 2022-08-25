<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Cotton</title>
<style type="text/css">
<%@include file="/WEB-INF/css/cottonhome.css"%>
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="heading">
		<div class="navbar">
			<div class="dropdown">
				<button class="dropbtn">
					Add On <em class="fa fa-caret-down"></em>
				</button>
				<div class="dropdown-content">
					<a href="/cotton/addform">Cotton</a> <br> <a
						href="/suppliercotton/addform">Lead Time</a> <br>

				</div>
				<div class="account">
			<div>
				<a href="/supplier/myProfileindex">My Account</a>
			</div>
			<div>
				<a href="/supplier/myindexprevious"><em class="fa fa-sign-out"
					style="font-size: 30px; color: white;float:right;"> </em></a>
			</div>
		</div>
			</div>
		</div>
	</div>
		
	<div class="content">
	<div class=s>
		<div>
			<br> <a class="edit" href="/cotton/list">Cotton Details
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
		<div>
			<a class="create" href="/suppliercotton/findLeadform">Lead Time
				With Cotton
				<hr>
			</a><br>
		</div>
		</div>
		<div>
		<div>
			 <img src="https://media.istockphoto.com/photos/young-farmer-woman-harvests-a-cotton-cocoon-in-a-cotton-field-the-sun-picture-id1276954885?b=1&k=20&m=1276954885&s=612x612&w=0&h=BI0a1g8p2YzlOScCjH5JUT2_KYIXVOkBtO9vo7D0LK0="
				 alt="image" class="imgg">
		</div>
	</div>
	</div>
</body>
</html>