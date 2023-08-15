<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="com.DB.*"%>
<%@page import="com.dao.*"%>
<%@page import="com.entity.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Job - Job Portal</title>
<link rel="stylesheet" href="scomponents/all_css.jsp">
<style>
body {
	background-color: #181818;
	color: #fff;
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	overflow-x: hidden;
}

.content {
	padding: 40px;
	margin: 0 auto;
	max-width: 1200px;
	text-align: center;
}

.job-form {
	background-color: #262626;
	padding: 40px;
	border-radius: 10px;
	margin-top: 15px;
	width: 500px;
	text-align: left;
}

.jobHeading {
	font-size: 2em;
	border-left: 5px solid dodgerblue;
	padding: 10px;
	color: #ffc107;
	letter-spacing: 2px;
	margin-bottom: 60px;
	font-weight: bold;
	padding-left: 10px;
}

.job-form label {
	display: block;
	margin-bottom: 15px;
	font-weight: bold;
}

.job-form input[type="text"], .job-form textarea, .job-form select {
	width: 100%;
	padding: 10px;
	margin-bottom: 25px;
	background-color: #3c3c3c;
	border: none;
	border-radius: 5px;
	color: #fff;
	font-size: 1rem;
}

.job-form select {
	appearance: none;
	-webkit-appearance: none;
	background-color: #3c3c3c;
	padding: 15px;
}

.job-form button {
	padding: 15px 30px;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
	font-size: 1.1rem;
	transition: background-color 0.3s ease;
}

.job-form button:hover {
	background: linear-gradient(45deg, greenyellow, dodgerblue);
}

.footer {
	margin-top: 40px;
	position: relative;
	/* top: 158vh; */
}
</style>
</head>
<body>

	<c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>

	<%@include file="components/navbar.jsp"%>

	<div class="content">
		<form class="job-form" action="update" method="post">


			<%
			int id = Integer.parseInt(request.getParameter("id"));
			JobDAO dao = new JobDAO(DBConnect.getConn());
			Jobs j = dao.getJobById(id);
			/* 			out.println(id); */
			%>

			<input type="hidden" name="id" value="<%=j.getId()%>">

			<h1 class="jobHeading">Edit a Job Listing</h1>

			<label for="jobTitle">Enter Title:</label> <input type="text"
				id="jobTitle" name="title" value="<%=j.getTitle()%>" required>

			<label for="location">Location:</label> <select id="location"
				name="location" required>
				<option value="<%=j.getLocation()%>"><%=j.getLocation()%></option>
				<option value="Bengluru">Bengluru</option>
				<option value="Ahemadabad">Ahemadabad</option>
				<option value="New York">New York</option>
				<option value="Los Angeles">Los Angeles</option>
				<option value="Chicago">Chicago</option>
			</select> <label for="category">Category of Job:</label> <select id="category"
				name="category" required>
				<option value="<%=j.getCategory()%>"><%=j.getCategory()%></option>
				<option value="Engineering">Engineering</option>
				<option value="Sales">Sales</option>
				<option value="Marketing">Marketing</option>
				<option value="HR">HR</option>
			</select> <label for="status">Status:</label> <select id="status"
				name="status" required>
				<option value="<%=j.getStatus()%>"><%=j.getStatus()%></option>
				<option value="Active">Active</option>
				<option value="Inactive">Inactive</option>
			</select> <label for="jobDescription">Enter Description:</label>
			<textarea id="description" name="description" rows="6" required><%=j.getDescription()%></textarea>

			<button>Submit</button>
		</form>
	</div>


	<%@ include file="components/footer.jsp"%>
</body>
</html>
