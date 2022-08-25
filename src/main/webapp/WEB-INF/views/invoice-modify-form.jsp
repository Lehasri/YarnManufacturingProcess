<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Invoice Modify Form</title>
</head>
<body>
    <h3>Modify Invoice</h3>
    <br>
    <form action="/invoice/updateform" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="invoice id"
            name="id"> <input type='submit' value="Submit" name="submit">
    </form>

</body>
</html>