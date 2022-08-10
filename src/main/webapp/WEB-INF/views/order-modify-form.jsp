<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders Modify Form</title>
</head>
<body>
    <h3>Modify Orders</h3>
    <br>
    <form action="/orders/updateform" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="order id"
            name="id"> <input type='submit' value="Submit" name="submit">
    </form>

</body>
</html>