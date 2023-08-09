<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css.jsp"%>
</head>

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: #292b2c;
	color: #fff;
	font-family: 'Open Sans', Arial, sans-serif;
	display: flex;
	align-items: center;
	flex-direction: column;
}

/* Navbar styles */
.navbar {
	background-color: rgba(0, 0, 0, 0.2);
	backdrop-filter: blur(10px);
	padding: 15px 0;
	transition: background-color 0.3s ease;
	width: 95vw;
	border-radius: 20px;
	margin: 10px 0px;
}

.container-nav {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 0 30px;
}

.logo-job {
	color: #ffcc29;
	font-size: 28px;
	text-decoration: none;
	font-weight: bold;
}

.nav-links {
	list-style: none;
	display: flex;
	gap: 30px;
}

.nav-links a {
	color: #fff;
	text-decoration: none;
	font-size: 20px; /* Larger font size */
	transition: color 0.3s ease;
	font-weight: 600;
}

.nav-links a:hover {
	color: #ffcc29;
}

.user-links {
	display: flex;
	gap: 15px;
}

.login, .registerBtn {
	color: #ffcc29;
	text-decoration: none;
	border: 1px solid #ffcc29;
	padding: 8px 15px;
	border-radius: 5px;
	font-size: 16px;
	transition: color 0.3s ease, border-color 0.3s ease;
}

.login:hover, .registerBtn:hover {
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
		<div class="container-nav">
			<a href="#" class="logo-job">Job Portal</a>
			<ul class="nav-links">
				<li><a href="./index.jsp"><i class="fas fa-home"></i> Home</a></li>
				<li><a href="#"><i class="fas fa-file-alt"></i> Post Job</a></li>
				<li><a href="#"><i class="fas fa-eye"></i> View Job</a></li>
			</ul>
			<div class="user-links">
				<a href="./login.jsp" class="login">Log In</a> 
				<a href="./signup.jsp" class="registerBtn">Sign Up</a>
			</div>
		</div>
	</nav>

</body>
</html>