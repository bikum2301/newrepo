<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
<style>
body {
	font-family: Arial, sans-serif;
}

.header {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 10px;
	background-color: #f1f1f1;
}

.admin-box {
	border: 1px solid #ccc;
	padding: 20px;
	margin: 20px;
	background-color: #fafafa;
}

.logout-button {
	background-color: #ff4b5c;
	color: white;
	border: none;
	padding: 10px 20px;
	cursor: pointer;
}

.logout-button:hover {
	background-color: #ff1c3c;
}
</style>
</head>
<body>
	<div class="header">
		<div class="admin-box">ADMIN</div>
		<form action="/linhtinh/admin/logout" method="post">
			<button type="submit" class="logout-button">Logout</button>
		</form>
	</div>
</body>
</html>