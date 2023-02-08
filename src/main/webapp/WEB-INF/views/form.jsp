<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Leave a Review</h1>
	<form action="/review-form-submit" method="get">
		<h2>
			<label for="name-input">Your Name</label>
			<input name="name" id="name-input"/>
		</h2>
		<h2>
			<label for="comment-input">Comment:</label><br></br>
			<textarea name="comment" rows=5 cols="40"></textarea>
		</h2>
		<h2>
			<label for="rate-input">Rating</label><br></br>
		</h2>
		<h3>
			<input type="radio" name="rate" value="5"/>5 (best)
			<input type="radio" name="rate" value="4"/>4-
			<input type="radio" name="rate" value="3"/>3-
			<input type="radio" name="rate" value="2"/>2-
			<input type="radio" name="rate" value="1"/>1 (worst)
		</h3>
		<p>
			<button type= "submit">Submit</button>
		</p>
	</form>
	<a href="/">Back to Homepage</a>

</body>
</html>