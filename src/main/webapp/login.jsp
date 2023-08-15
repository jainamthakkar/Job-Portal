<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn-Job Portal</title>
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

.succTxt{
	text-align: center;
	margin-bottom: 40px;
	color: DodgerBlue;
	font-size: 1.3rem;
}

.errorTxt{
	text-align: center;
	margin-bottom: 40px;
	color: red;
	font-size: 1.3rem;
}

</style>

<body>

	<div class="container-form">

		<%@include file="components/navbar.jsp"%>
		
		<main class="mainForm">
			<div class="center ">
		
				<h1>LogIn</h1>
				
				<c:if test="${not empty succMsg }">
					<p class="succTxt">${succMsg}</p>
					<c:remove var="succMsg"/>
				</c:if>
				
				<c:if test="${empty succMsg }">
					<p class="errorTxt">${succMsg}</p>
					<c:remove var="succMsg"/>
				</c:if>

				<form action="login" method="post">				

					<div class="inputbox">
						<label class="inputLable">Email</label><input type="text"
							name="email" required="required">
					</div>
					<div class="inputbox">
						<label class="inputLable">Password</label><input type="password"
							name="password" required="required">
					</div>
					<div class="inputbox">
						<button type="submit" class="submitButton">Submit</button>
					</div>
				</form>
			</div>

		</main>
	</div>
</body>
</html>