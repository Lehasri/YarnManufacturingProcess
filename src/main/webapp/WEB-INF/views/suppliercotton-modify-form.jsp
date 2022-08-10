<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SupplierCotton Modify Form</title>
</head>
<body>
	<h3>Modify SupplierCotton</h3>
	<br>
	<form action="/suppliercotton/updateform" method="get"
		style="margin: 0;">
		<label>Enter Id</label> <input type="text"
			placeholder="supplier id" name="supplierId"> 
		<label>Enter Id</label> <input type="text" placeholder="cotton id"
			name="cottonId"> <input type='submit' value="Submit" name="submit">

	</form>

</body>
</html>