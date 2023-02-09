<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
	<% 
	ArrayList<String> list = new ArrayList<String>();
	list.add("Pepperoni");
	list.add("Sausage");
	list.add("Chicken");
	list.add("Mushroom");
	list.add("Olive");
	list.add("Green Pepper");
	list.add("Onion");
	list.add("Pineapple");
	session.setAttribute("toppings", list);
	%>

<body bgcolor="gray" text="white">
	<h1><font face="Brush Script MT">Welcome to MVC's Pizza</font></h1>
	
	<c:set var = "now" value ="<%=new java.util.Date()%>" />
	 
	<h3> Today's date : <fmt:formatDate type = "day" value = "${day}" /> <fmt:formatDate type = "date" value = "${now}" /> </h3>
	
	<h2><font face="Brush Script MT">Specialty Pizzas</font></h2>
	<a href="/aP">Anchovy Lover's</a>
	<p></p>
	<a href="/pP">Paleo Pizza Page</a>
	<p></p>
	<a href="/dP">Dessert Pizza Page</a>
	<p></p>
	<h2><font face="Brush Script MT">Custom Pizza</font></h2>
	<a href="/build-form">Build your own</a>
	<p></p>
	<h2><font face="Brush Script MT">Leave a Review</font></h2>
	<p></p>
	<a href="/review-form">Click here to leave a review</a>
</body>
</html>
