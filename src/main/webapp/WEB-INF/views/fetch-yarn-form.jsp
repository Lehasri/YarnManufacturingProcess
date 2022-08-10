<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fetch Yarn Form</title>
</head>
<body>
    <h3>Fetch Yarn</h3>
    <br>
    <form action="/yarn/findyarnbyid" method="get"
        style="margin: 0;">
        <label>Enter Id</label> <input type="text" placeholder="cotton id"
            name="id"> <input type='submit' value="Fetch" name="submit">
    </form>

</body>
</html>