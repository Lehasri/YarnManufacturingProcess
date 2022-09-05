<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update YarnStock</title>
<style type="text/css">
<%@include file="/WEB-INF/css/yarnstock-form.css"%>
body {
    background-image:
        url(https://www.kibrispdr.org/data/704/kerajinan-dari-benang-woll-59.jpg);
    background-size: cover; 
    background-repeat:no-repeat; 
    
   }  
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top style="color: white; text-decoration: none">
		Update Yarn Production<a href="/yarn/mypreviousyarnindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right"></em></a>
	</div>
	<br>
	<div id="root">
		<div id="form">
			<form:form action="update" method="post"
				modelAttribute="updateyarnstock">
				<label for="yarnType">Yarn Type</label>
						<select id="yarnType" name="yarnType" class="text-box" required="required">
						<option value="Single">Single</option>
						<option value="Ply">Ply</option>
						<option value="Cord">Cord</option>
						<option value="Novelty">Novelty</option>
						<option value="Textured">Textured</option>
						<option value="Stretch">Stretch</option>
						<option value="Metallic">Metallic</option>
						</select>
					<label for="color">Color</label>
						<form:input path="color" class="text-box"
							placeholder="Enter a color"
							title="Color must contain only alphabets"
							pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
					<label for="yarnStatus">Yarn Status</label>
						<select id="yarnStatus" name="yarnStatus" class="text-box" required="required">
						<option value="Ready">Ready</option>
						<option value="Not ready">Not ready</option>
						</select>
					<label for="perDayProduction">Production/Day</label>
						<form:input path="perDayProduction" class="text-box"
							placeholder="Enter a quantity in percentage " title="Enter a valid production quantity"
							pattern="^([1-9][0-9]?|100)%$" required="true" />
					<label for="quantity">Quantity</label>
						<form:input path="quantity" class="text-box"
							placeholder="Enter a quantity" title="Enter a number"
							pattern="^([1-9][0-9]{0,5}|10)$"
							required="true" />
					<label for="rate">Rate</label>
						<form:input path="rate" class="text-box"
							placeholder="Enter a rate" title="Enter a number"
							pattern="^([1-9][0-9]{0,7}|10)$"
							required="true" />
					<label for="totalStockInHand">Total Stock</label>
						<form:input path="totalStockInHand" class="text-box"
							placeholder="Enter a total stock" title="Enter a number"
							pattern="^([1-9][0-9]{0,7}|10)$"
							required="true" />
				<div class=movecenter>
					<form:button class="but hover">Update</form:button>
				</div>
			</form:form>
		</div>
	</div>
	<footer>
		<a href="/yarnstock/yarnlist" class="background previous">&#8249;</a>
	</footer>
</body>
</html>