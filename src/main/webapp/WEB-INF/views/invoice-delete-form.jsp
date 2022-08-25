<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Form</title>
</head>
<body>
    <h3>Delete Invoice</h3>
    <br>
    <form action="/invoice/deleteinvoice" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="invoice id"
            name="id"> <input type='submit' value="Delete" name="submit">
    </form>

</body>
</html>