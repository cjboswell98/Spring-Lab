<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="gray" text="white">

	<h1><font face="Brush Script MT">Build Your Own Pizza</font></h1>
	<form action="/build-form-submit" method="get">
		<h2>
			<label for="size-input">Size:</label> 
			<select name="size">
				<option>Small</option>
				<option>Medium</option>
				<option>Large</option>
			</select>
		</h2>
		<h2>
			<label for="toppings-input">How many toppings?</label> 
			<input name="toppings" id="toppings-input" />
			
		</h2>
		<p>
			<c:forEach var="x" items="${toppings}">
				<p><c:out value="${x}"></c:out></p>
			</c:forEach>
		</p>
		<h2>
			<input name="gluten" type="checkbox"/>
			<label for="gluten-input">Gluten Free? ($2.00 Extra)</label> 
			
		</h2>
		<h2>
			<label for="special-input">Special Instructions? (Optional)</label><br> 
			<textarea name="special" rows=5 cols="40 "></textarea>
		</h2>
		<p>
			<button type="submit">Submit</button>
		</p>
	</form>

	<a href="/">Back to Homepage</a>
</body>
</html>
