<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fetch Orders Form</title>
</head>
<body>
    <h3>Fetch Orders</h3>
    <br>
    <form action="/orders/findorderbyid" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="order id"
            name="id"> <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>