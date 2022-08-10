<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Modify Form</title>
</head>
<body>
    <h3>Modify Customer</h3>
    <br>
    <form action="/customer/updateform" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="customer id"
            name="id"> <input type='submit' value="Submit" name="submit">
    </form>

</body>
</html>