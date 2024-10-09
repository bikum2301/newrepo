<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<style>
.container {
	max-width: 400px;
	margin: auto;
	padding: 20px;
	border: 1px solid #ccc;
	border-radius: 10px;
	background-color: #f9f9f9;
}

.container h2 {
	text-align: center;
}

.container label {
	display: block;
	margin: 10px 0 5px;
}

.container input[type="email"], .container input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 5px 0 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.container button {
	width: 100%;
	padding: 10px;
	background-color: #4CAF50;
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

.container button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Change Password</h2>
		<form action="/linhtinh/forget" method="post">
			<c:if test="${alert !=null}">
				<h3 class="alert alert-danger">${alert}</h3>
			</c:if>
			<label for="email">Email</label> <input type="email" id="email"
				name="email" placeholder="Enter your email" required> <label
				for="password">New Password</label> <input type="password"
				id="password" name="password" placeholder="Enter new password"
				required> <label for="repeat-password">Repeat
				Password</label> <input type="password" id="repeat-password"
				name="repeat-password" placeholder="Repeat new password" required>
			<button type="submit">Submit</button>
		</form>
	</div>
</body>
</html>