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
	top: 50%;
	right: 0;
	transform: translateY(-50%);
	width: 50%;
	background-color: rgba(26, 26, 46, 0.8);
	/* Dark blue background color */
	padding: 20px;
	color: #fff;
	text-align: right;
	font-style: italic;
}

/* Quote text styles */
.quote {
	font-size: 28px;
	line-height: 1.6;
}

.quote b {
	font-weight: bold;
}

.quote-author {
	font-size: 20px;
	margin-top: 10px;
}
</style>

<body>
	<%@include file="navbar.jsp"%>
	
	<div class="background-image"></div>
	
	<div class="quote-container">
	
		<blockquote class="quote">
			<p>
				<b>The only way to do great work</b> is to <b>love what you do</b>.
				<br> <b>If you haven't found it yet,</b> keep looking. <br>
				<b>Don't settle.</b> As with all matters of the heart, <br> <b>you'll
					know when you find it.</b>
			</p>
			<footer class="quote-author">- Steve Jobs</footer>
		</blockquote>
	</div>
	
	<%@ include file="footer.jsp"%>
</body>
</html>