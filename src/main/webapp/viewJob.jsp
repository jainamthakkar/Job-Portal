<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Job - Job Portal</title>
<link rel="stylesheet" href="scomponents/all_css.jsp">
<style>
body {
	background-color: #181818;
	color: #fff;
	margin: 0;
	padding: 0;
	overflow-x: hidden; 
}

.content {
	padding: 30px;
	margin: 0 auto;
	width: 80vw;
}

.headingText{
	margin-bottom: 15px;
	margin-top: 0;
	color: #ffc107; 
}
.job-details {
	background-color: #262626;
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0px 4px 8px rgba(255, 255, 255, 0.2);
}

.job-field {
	margin-bottom: 15px;
}

.job-field label {
	display: inline-block;
	width: 120px;
	font-weight: bold;
}

.job-field span {
	display: inline-block;
	color: #d4d4d4;
}

.buttons {
	margin-top: 20px;
}

.buttons button {
	padding: 10px 20px;
	margin-right: 10px;
	background-color: #0056b0;
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
	transition: background-color 0.3s ease;
	font-size: 16px;
}

.buttons .edit:hover {
	background-color: blue;
}

.buttons .delete:hover {
	background-color: red;
}
</style>
</head>
<body>
	<!-- Include your navigation bar -->
	<%@include file="components/navbar.jsp"%>

	<div class="content">
		<div class="job-details">
			<h2 class="headingText">Job Details</h2>
			<div class="job-field">
				<label>Title:</label> <span>Software Engineer</span>
			</div>
			<div class="job-field">
				<label>Location:</label> <span>New York</span>
			</div>
			<div class="job-field">
				<label>Category:</label> <span>Engineering</span>
			</div>
			<div class="job-field">
				<label>Status:</label> <span>Active</span>
			</div>
			<div class="job-field">
				<label>Description:</label> <span>Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Sed nec commodo urna. lorem Lorem ipsum dolor sit amet,
					consectetur adipiscing elit. Sed nec commodo urna. lorem</span>
			</div>
			<div class="buttons">
				<button class="edit">Edit</button>
				<button class="delete">Delete</button>
			</div>
		</div>
	</div>


	<!-- Include your footer -->
	<%@ include file="components/footer.jsp"%>
</body>
</html>
