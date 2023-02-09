<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="gray" text="white">
	<h1><font face="Brush Script MT">Your Pizza!</font></h1>
	<p>Size: ${ size }</p>
	<p>Toppings: ${ toppings}</p>
	<p>Gluten-Free Crust: ${ gluten }</p>
	<p>Specialty Instructions: ${ special }</p>
	<p>Price ${ price }</p>
	
	<p  style="color:red" >
	
	<c:if test="${fPrice>=15}">
		<c:out value="Because your order meets the $15.00 minimum, you get FREE DELIVERY!"></c:out>
	</c:if><br>
	</p>
	<a href="/">Back to Homepage</a>

</body>
</html>
