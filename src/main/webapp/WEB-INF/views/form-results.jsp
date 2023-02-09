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
	<h1>
		<font face="Brush Script MT">Thanks for your Review!</font>
	</h1>
	<p>Your Name: ${ name }</p>
	<p>Comment: ${ comment }</p>
	<p>Rating: ${ rate }</p>

	<p style="color: red">

		<c:out value="${comment }"></c:out>
		<br>
	</p>

	<a href="/">Back to Homepage</a>
</body>
</html>
