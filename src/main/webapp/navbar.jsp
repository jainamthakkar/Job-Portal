<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="components/all_css.jsp"%>
</head>

<style>

/* Reset default styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Dark mode styles */
body {
	background-color: #292b2c;
	color: #fff;
	font-family: 'Open Sans', Arial, sans-serif; /* Use a stylish font */
}

/* Navbar styles */
.navbar {
	background-color: rgba(0, 0, 0, 0.3); /* More transparent background */
	backdrop-filter: blur(10px);
	padding: 15px 0; /* Increased padding */
	transition: background-color 0.3s ease;
}

.container {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 30px; /* Increased padding */
}

.logo {
	color: #ffcc29;
	font-size: 28px; /* Larger font size */
	text-decoration: none;
	font-weight: bold;
}

.nav-links {
	list-style: none;
	display: flex;
	gap: 30px; /* Increased gap */
}

.nav-links a {
	color: #fff;
	text-decoration: none;
	font-size: 18px; /* Larger font size */
	transition: color 0.3s ease;
}

.nav-links a:hover {
	color: #ffcc29;
}

.user-links {
	display: flex;
	gap: 15px; /* Increased gap */
}

.login, .register {
	color: #ffcc29;
	text-decoration: none;
	border: 1px solid #ffcc29;
	padding: 8px 15px; /* Increased padding */
	border-radius: 5px;
	font-size: 16px; /* Larger font size */
	transition: color 0.3s ease, border-color 0.3s ease;
}

.login:hover, .register:hover {
	color: #292b2c;
	background-color: #ffcc29;
}

/* Responsive styles */
@media ( max-width : 768px) {
	.container {
		flex-direction: column;
	}
	.nav-links {
		margin-top: 10px;
	}
	.user-links {
		margin-top: 10px;
	}
}
</style>

<body>
	<nav class="navbar">
		<div class="container">
			<a href="#" class="logo">Job Portal</a>
			<ul class="nav-links">
				<li><a href="#">Home</a></li>
				<li><a href="#">Post Job</a></li>
				<li><a href="#">View Job</a></li>
			</ul>
			<div class="user-links">
				<a href="#" class="login">Log In</a> <a href="#" class="register">Register</a>
			</div>
		</div>
	</nav>
</body>
</html>