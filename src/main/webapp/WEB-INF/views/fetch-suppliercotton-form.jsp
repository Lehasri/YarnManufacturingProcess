<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch SupplierCotton Form</title>
</head>
<body>
    <h3>Fetch SupplierCotton</h3>
   <br>
	<form action="/suppliercotton/findsuppliercottonbyid" method="get"
		style="margin: 0;">
		<label>Enter Id</label> <input type="text"
			placeholder="supplier id" name="supplierId"> 
		<label>Enter Id</label> <input type="text" placeholder="cotton id"
			name="cottonId"> <input type='submit' value="Fetch" name="submit">

	</form>

</body>
</html>