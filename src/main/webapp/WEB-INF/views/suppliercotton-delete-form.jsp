<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Form</title>
</head>
<body>
    <h3>Delete SupplierCotton</h3>
   <br>
	<form action="/suppliercotton/deletesuppliercotton" method="get"
		style="margin: 0;">
		<label>Enter Id</label> <input type="text"
			placeholder="supplier id" name="supplierId"> 
		<label>Enter Id</label> <input type="text" placeholder="cotton id"
			name="cottonId"> <input type='submit' value="Delete" name="submit">

	</form>

</body>
</html>