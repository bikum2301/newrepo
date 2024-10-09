<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	margin: 0;
	padding: 0;
}

.container {
	padding: 16px;
	background-color: white;
	margin: 50px auto;
	width: 50%;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-sizing: border-box;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
	border-radius: 5px;
}

.registerbtn:hover {
	opacity: 1;
}

a {
	color: dodgerblue;
}

.signin {
	background-color: #f1f1f1;
	text-align: center;
	padding: 16px;
	border-radius: 10px;
	margin-top: 20px;
}
</style>
</head>
<body>
	<form action="/linhtinh/register" method="post">
		<c:if test="${alert !=null}">
			<h3 class="alert alert-danger">${alert}</h3>
		</c:if>
		<div class="container">
			<h1>Register</h1>
			<p>Please fill in this form to create an account.</p>
			<hr>
			<label for="username"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="username" id="username" required>
			<label for="fullname"><b>Full Name</b></label> <input type="text"
				placeholder="Enter Full Name" name="fullname" id="fullname" required>
			<label for="email"><b>Email</b></label> <input type="text"
				placeholder="Enter Email" name="email" id="email" required>
			<label for="phone"><b>Phone</b></label> <input type="text"
				placeholder="Enter Phone Number" name="phone" id="phone" required>
			<label for="password"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="password" id="password" required>
			<label for="psw-repeat"><b>Repeat Password</b></label> <input
				type="password" placeholder="Repeat Password" name="psw-repeat"
				id="psw-repeat" required>
			<hr>
			<p>
				By creating an account you agree to our <a href="/linhtinh/login">Terms and
					Privacy</a>.
			</p>
			<button type="submit" class="registerbtn">Register</button>
		</div>
		<div class="container signin">
			<p>
				Already have an account? <a href="#">Sign in</a>.
			</p>
		</div>
	</form>
</body>
</html>