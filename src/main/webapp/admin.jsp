<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin-Job Portal</title>
<%@include file="components/all_css.jsp"%>
</head>

<style>
body {
	overflow-x: hidden;
}

.index-main{
	display: flex;
	flex-direction: column;
	min-height: 120vh;
	align-items: center;
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

.welcome-text {
    /* border: 2px solid black; */
    font-family: cursive;
    text-align: center;
    margin-top: 25px;
    font-size: 38px;
    padding: 15px;
    margin-top: 60px;
    border-radius: 20px;
    color: #ffcc29;
    text-align: center;
    box-shadow: 0px 4px 8px rgba(255, 255, 255, 0.2);
    letter-spacing: 2px;
    background-color: rgba(0, 0, 0, 0.7);
    backdrop-filter: blur(10px);
    font-size: 2.6rem;
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

		<div class="background-image">
			<div class="quote-container"></div>
		</div>
			<h1 class="welcome-text">Welcome Admin!!</h1>

	</div>
		<%@ include file="components/footer.jsp"%>
</body>
</html>