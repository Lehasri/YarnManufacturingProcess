<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Admin</title>
<style type="text/css">
* {
	font-family: cursive;
}
</style>

</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addadminlogin">
				
				<div>
					<label for="emailId">Email Id</label>
					<div>
						<form:input path="emailId" />
					</div>
				</div>
				<div>
					<label for="userPassword">User Password</label>
					<div>
						<form:input path="userPassword" />
					</div>
				</div>
				<div>
					<form:button>Create</form:button>
				</div>
			</form:form>
		</div>
	</div>


</body>
</html>