<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Fetch Yarn Stock Form</title>
</head>
<body>
    <h3>Fetch Yarn Stock</h3>
    <br>
    <form action="/yarnstock/findyarnstockbyid" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="yarn id"
            name="id"> <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>