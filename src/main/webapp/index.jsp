<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.DB.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.entity.*"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home-Job Portal</title>
</head>

<style>
body {
	overflow-x: hidden;
}

.index-main {
	display: block;
	min-height: 120vh;
}

.background-image {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	min-height: 100vh;
	background-image: url('components/background_unsplash.jpg');
	background-size: cover;
	background-position: center;
	opacity: 0.7;
	z-index: -1;
	display: block;
}

.quote-container {
	position: absolute;
	top: 25%;
	right: 100px;
	height: 400px;
	width: 350px;
	background-image: url('components/quote_unsplash.jpg');
	background-size: cover;
	background-position: center;
	border: 1px solid black;
	border-radius: 40px;
	box-shadow: 0 10px 20px black;
}
</style>

<body>

	<%@include file="components/navbar.jsp"%>
	<div class="index-main">

		<%-- <%
		Connection conn = DBConnect.getConn();
		out.println(conn);
		%> --%>
		<div class="background-image">
			<div class="quote-container"></div>
		</div>

	</div>
	<%@ include file="components/footer.jsp"%>
</body>
</html>