<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<%@include file="all_css.jsp"%>

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

.modal-btn.active {
	filter: blur(20px);
	pointer-events: none;
	user-select: none;
}

.modal_container {
	position: fixed;
	top: 30%;
	left: 50%;
	transform: translate(-50%, -50%);
	width: 600px;
	padding: 50px;
	box-shadow: 0 5px 30px rgb(0, 0, 0.3);
	background: #fff;
	visibility: hidden;
	opacity: 0;
	transition: 0.5s;
}

.modal_container.active {
	top: 50%;
	visibility: visible;
	opacity: 1;
	transition: 0.5s;
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

<nav class="navbar">
	<div class="container-nav">
		<a href="#" class="logo-job">Job Portal</a>
		<ul class="nav-links">

			<c:choose>
				<c:when test="${userobj.role eq 'admin'}">
					<li><a href="./admin.jsp"><i class="fas fa-home"></i> Home</a></li>
					<li><a href="./addJob.jsp"><i class="fas fa-file-alt"></i>
							Post Job</a></li>
					<li><a href="./viewJob.jsp"><i class="fas fa-eye"></i>
							View Job</a></li>
				</c:when>

				<c:when test="${userobj.role eq 'user'}">
					<li><a href="./index.jsp"><i class="fas fa-home"></i> Home</a></li>
					<li><a href="./viewJob_user.jsp"><i class="fas fa-eye"></i>
							View Job</a></li>
				</c:when>

				<c:otherwise>
					<li><a href="./index.jsp"><i class="fas fa-home"></i> Home</a></li>
				</c:otherwise>
			</c:choose>

		</ul>

		<div class="user-links">

			<c:if test="${userobj.role eq 'admin'}">
				<a href="#" class="login"> Admin </a>
				<a href="logout" class="registerBtn"> LogOut </a>
			</c:if>

			<c:if test="${userobj.role eq 'user'}">
				<a href="#" class="modal-btn login">
					<div id="myBtn" onclick="toggle()">${userobj.name }</div>
				</a>
				<a href="logout" class="registerBtn"> LogOut </a>
			</c:if>

			<c:if test="${empty userobj.role}">
				<a href="./login.jsp" class="login"> LogIn </a>
				<a href="./signup.jsp" class="registerBtn"> SignUp </a>
			</c:if>
		</div>
	</div>
</nav>

<!-- <div class="modal-btn">
		<button onclick="toggle()">jainam</button>
	</div> -->

<!-- <div class="modal_container">
		<h1>Yor Name</h1>
		<button class="btn" type="submit" onclick="toggle()">Close</button>
	</div> -->

 <script type="text/javascript" src="components/modal.js" /> 
