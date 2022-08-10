<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Supplier Form</title>
</head>
<body>
    <h3>Fetch Supplier</h3>
    <br>
    <form action="/supplier/findsupplierbyid" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="supplier id"
            name="id"> <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>