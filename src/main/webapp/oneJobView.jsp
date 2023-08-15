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
<link rel="stylesheet" href="components/all_css.jsp">
<style>
body {
	background-color: #181818;
	color: #fff;
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	min-height: 120vh;
}

.contentMain {
	padding: 30px;
	margin: 0 auto;
	width: 80vw;
	min-height: 85vh;
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

footer {
	position: relative;
	bottom: 0px;
}
</style>
</head>
<body>

	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp" />
	</c:if>

	<%@include file="components/navbar.jsp"%>

	<div class="contentMain">
		<%
		JobDAO dao = new JobDAO(DBConnect.getConn());
		List<Jobs> list = dao.getAllJobsForUser();
		for (Jobs j : list) {
		%>

		<h1 class="headingText">Job Details</h1>

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
				<label>Description:</label> <span> <%=j.getDescription()%></span>
			</div>
			<div class="job-field">
				<label>Publish-Date:</label> <span> <%=j.getPdate()%>
				</span>
			</div>

		</div>
		<%
		}
		%>

	</div>

	<%@ include file="components/footer.jsp"%>
</body>
</html>
