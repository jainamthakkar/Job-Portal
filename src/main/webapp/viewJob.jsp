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

.headingText {
	margin-bottom: 15px;
	margin-top: 0;
	color: #ffc107;
	text-align: center;
}

.job-details {
	background-color: #262626;
	padding: 40px;
	border-radius: 10px;
	box-shadow: 0px 4px 8px rgba(255, 255, 255, 0.2);
	margin-bottom: 30px;
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

.jobTitle {
	color: #ffc107;
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
		<h1 class="headingText">Job Details</h1>

		<%
		JobDAO dao = new JobDAO(DBConnect.getConn());
		List<Jobs> list = dao.getAllJobs();
		for (Jobs j : list) { /*  here for each loop of jsp can be use  <c:forEach var="j" items="${list}"> content of job data </c:forEach>*/
		%>

		<div class="job-details">
			<div class="jobTitle job-field">
				<label>Title:</label> <span> <%=j.getTitle()%>
				</span>
			</div>
			<div class="job-field">
				<label>Location:</label> <span> <%=j.getLocation()%>
				</span>
			</div>
			<div class="job-field">
				<label>Category:</label> <span> <%=j.getCategory()%>
				</span>
			</div>
			<div class="job-field">
				<label>Status:</label> <span> <%=j.getStatus()%>
				</span>
			</div>
			<div class="job-field">
				<label>Description:</label> <span> <%=j.getDescription()%>
				</span>
			</div>
			<div class="job-field">
				<label>Publish-Date:</label> <span> <%=j.getPdate()%>
				</span>
			</div>
			<div class="buttons">
				<a href="edit.jsp?id=<%=j.getId()%>"><button class="edit">Edit</button></a>
				<a>
					<button class="delete">Delete</button>
				</a>
			</div>

		</div>
		<%
		}
		%>


	</div>


	<!-- Include your footer -->
	<%@ include file="components/footer.jsp"%>
</body>
</html>
