<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Products</title>
<style type="text/css">
<%@include file="/WEB-INF/css/products.css"%>
</style>
</head>
<body>
	<div class=row>
			<a href="/yarnstock/status"> <img
			src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkuiUTIP_3qQF4Gbn169W5yXWUQK102snmBSw8FhGW5Aq1rzPhlKOl4aPTbqC9UFuORng&usqp=CAU" alt=yarn
			width="200px" height="200px" style="vertical-align:middle;margin:0px 4px"></a>
			<a href="/yarnstock/pinkcolor"> <img
			src="https://5.imimg.com/data5/EG/HS/XE/ANDROID-29380545/1591780112530-jpg-1000x1000.jpg" alt=yarn
			width="200px" height="200px" style="vertical-align:middle;margin:0px 8px"></a>
			<a href="/yarnstock/bluecolor"> <img
			src="data:image/jpeg;base64,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" alt=yarn
			width="200px" height="200px" style="vertical-align:middle;margin:0px 8px"></a>
			<a href="/yarnstock/redcolor"> <img
			src="https://5.imimg.com/data5/JF/AZ/BW/SELLER-38244978/dyed-yarn-250x250.jpg" alt=yarn
			width="200px" height="200px" style="vertical-align:middle;margin:0px 8px"></a>
		</div>
</body>
</html>