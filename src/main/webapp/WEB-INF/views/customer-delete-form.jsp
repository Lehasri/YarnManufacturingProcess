<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Form</title>
</head>
<body>
    <h3>Delete Customer</h3>
    <br>
    <form action="/customer/deletecustomer" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="customer id"
            name="id"> <input type='submit' value="Delete" name="submit">
    </form>

</body>
</html>