<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home-Job Portal</title>
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

	<div class="index-main">
		<%@include file="components/navbar.jsp"%>

		<div class="background-image">
			<div class="quote-container"></div>
		</div>

		<%@ include file="components/footer.jsp"%>
	</div>
</body>
</html>