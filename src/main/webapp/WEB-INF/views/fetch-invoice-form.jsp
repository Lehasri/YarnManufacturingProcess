<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fetch Invoice Form</title>
</head>
<body>
    <h3>Fetch Invoice</h3>
    <br>
    <form action="/invoice/findinvoicebyid" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="invoice id"
            name="id"> <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>