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
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	margin: 0;
}

.container {
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	width: 300px;
}

.container label {
	font-weight: bold;
	margin-bottom: 10px;
	display: block;
}

.container input[type="text"], .container input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 10px 0 20px 0;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.container button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	width: 100%;
}

.container button:hover {
	background-color: #45a049;
}

.container .cancelbtn {
	background-color: #f44336;
}

.container .cancelbtn:hover {
	background-color: #e53935;
}

.container .psw {
	float: right;
	padding-top: 16px;
}

.container .psw a {
	color: #4CAF50;
	text-decoration: none;
}

.container .psw a:hover {
	text-decoration: underline;
}

.container input[type="checkbox"] {
	margin-top: 20px;
}
</style>
</head>
<body>
	<form action="/linhtinh/login" method="post">
		<c:if test="${alert !=null}">
			<h3 class="alert alert-danger">${alert}</h3>
		</c:if>
		<div class="container">
			<label for="uname"><b>Username</b></label> <input type="text"
				placeholder="Enter Username" name="uname" required> <label
				for="psw"><b>Password</b></label> <input type="password"
				placeholder="Enter Password" name="psw" required>
			<button type="submit">Login</button>
			<label> <input type="checkbox" checked="checked"
				name="remember"> Remember me
			</label>
		</div>
		<div class="container" style="background-color: #f1f1f1">
			<button type="button" class="cancelbtn">Cancel</button>
			<span class="psw">Forgot <a href="/linhtinh/forget">password?</a></span>
		</div>
		<div class="container"
			style="background-color: #f1f1f1; text-align: center;">
			<p>
				Chưa có tài khoản?
				<button type="button"
					onclick="window.location.href='/linhtinh/register'">Đăng
					ký</button>
			</p>
		</div>
	</form>
</body>
</html>