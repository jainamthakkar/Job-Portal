<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="components/form.css">
</head>

<style>
* {
	margin: 0px;
	padding: opx;
	box-sizing: border-box;
}

body {
	overflow-x: hidden;
}

.container-form {
/* 	height: auto; */
	width: 100%;
	display: flex;
	flex-direction: column;
	align-items: center;
	margin-bottom: 20px;
	overflow: hidden;
}
</style>

<body>

	<div class="container-form">

		<%@include file="components/navbar.jsp"%>
		
		<main class="mainForm">
			<div class="center ">
		
				<h1>LogIn</h1>
				
				<%-- <c:if test="${not empty succMsg }">
					<p class="succTxt">${succMsg}</p>
					<c:remove var="succMsg"/>
				</c:if>
				
				<c:if test="${not empty errorMsg }">
					<p class="errorTxt">${errorMsg}</p>
					<c:remove var="errorMsg"/>
				</c:if> --%>

				<form action="register" method="post">				

					<div class="inputbox">
						<label class="inputLable">Email</label><input type="text"
							name="email" required="required">
					</div>
					<div class="inputbox">
						<label class="inputLable">Password</label><input type="password"
							name="password" required="required">
					</div>
					<div class="inputbox">
						<button type="submit" class="subButton">Submit</button>
					</div>
				</form>
			</div>

		</main>
	</div>
</body>
</html>