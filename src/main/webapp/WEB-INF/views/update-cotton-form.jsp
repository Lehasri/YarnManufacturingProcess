<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update Cotton</title>
<style type="text/css">
<%@include file="/WEB-INF/css/cotton-form.css"%>
</style>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class=top>
		 Update Cotton<a href="/supplier/cottonindex"><em class="fa fa-home"
		style="font-size: 30px; color: white;float:right;"></em></a>
	</div>
<br>

	<div id="root">
		<div id="form">
			<form:form class="form" action="update" method="post"
				modelAttribute="updatecotton">
					<div class="grid-container">
					<div>
						<div>
							<label for="cottonType">Cotton Type</label>
							<div>
								<form:input path="cottonType" class="text-box"
									placeholder="Enter a cotton type"
									title="Cotton type must contain only alphabets"
									pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
							</div>
						</div>
						<div>
							<label for="ratePerTon">Rate Per Ton</label>
							<div>
								<form:input path="ratePerTon" class="text-box"
									placeholder="Enter a rate per ton" title="Enter a valid amount"
									maxlength="5" pattern="^([0-9]+\\.?[0-9]|\\.[0-9]+)$"
									required="true" />
							</div>
						</div>
						<div>
							<label for="stockInHand">Stock In Hand</label>
							<div>
								<form:input path="stockInHand" class="text-box"
									placeholder="Enter a stock in meter" title="Enter a length "
									maxlength="5" pattern="^([0-9]+\\.?[0-9]|\\.[0-9]+)$"
									required="true" />
							</div>
						</div>
						</div>
						<div>
							<div>Cotton Quality :</div>
							<div>
								<label for="colour">Colour </label>
								<div>
									<form:input path="colour" class="text-box"
										placeholder="Enter a colour"
										title="colour must contain only alphabets"
										pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
								</div>
							</div>
						<div>
							<label for="trashContent">Trash Content</label>
							<div>
								<form:input path="trashContent" class="text-box"
									placeholder="Enter a Trash Content"
									title="Trash Content must contain only alphabets"
									pattern="^[a-zA-Z][a-zA-Z\\s]+$" required="true" />
							</div>
						</div>
						<div>
							<label for="ginningPercentage">Ginning Percentage</label>
							<div>
								<form:input path="ginningPercentage" class="text-box"
									placeholder="Enter a ginning percentage"
									title="Enter a valid ginning percentage"
									pattern="^((100)|(\d{1,2}(.\d*)?))%$" required="true" />
							</div>
						</div>
						<div>
							<label for="stapleLength">Staple Length</label>
							<div>
								<form:input path="stapleLength" class="text-box"
									placeholder="Enter a staple length"
									title="Enter a valid staple length"
									pattern="[1-9]\d*\_)|([1-9]\d*\/[1-9]\d*)|([1-9]\d*\_[1-9]\d*\/[1-9]\d*"
									required="true" />
							</div>
						</div>
						<div>
							<label for="micronaire">Micronaire</label>
							<div>
								<form:input path="micronaire" class="text-box"
									placeholder="Enter a micronaire"
									title="Enter a valid micronaire" pattern="[0-9]+\.{4}?"
									required="true" />
							</div>
						</div>
					</div>
				</div>

				<div>
					<form:button class="but hover">Update</form:button>
				</div>
			</form:form>
		</div>
		</div>
	<br>
	<footer>
		<a href="/cotton/myindexpreviousupdatecotton"
			class="previous background">&#8249;</a>
	</footer>
</body>
</html>