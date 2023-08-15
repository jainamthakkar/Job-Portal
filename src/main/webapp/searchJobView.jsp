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
<title>View Jobs By Search-Job Portal</title>
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
	padding: 20px;
	margin: 0 auto;
	width: 80vw;
	min-height: 85vh;
}

.content {
	padding: 40px;
	margin: 0 auto;
	width: 100%;
	text-align: center;
	background-color: #262626;
	padding: 40px;
	border-radius: 10px;
	/* 	margin-top: 15px; */
	text-align: left;
	margin-bottom: 30px;
}

.job-form {
	display: flex;
	/* align-items: center; */
	justify-content: flex-start;
}

.jobHeading {
	font-size: 1.4em;
	border-left: 5px solid dodgerblue;
	padding: 6px;
	color: #ffc107;
	margin-bottom: 20px;
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
	padding: 10px;
	width: 25%;
	margin-right: 15px;
}

.content button {
	padding: 10px 20px;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
	font-size: 1.1rem;
	transition: background-color 0.3s ease;
}

.content button:hover {
	background: linear-gradient(45deg, greenyellow, dodgerblue);
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

.viewMore {
	padding: 10px 20px;
	margin-right: 10px;
	background-color: #007bff;
	border: none;
	border-radius: 5px;
	color: #fff;
	cursor: pointer;
	transition: background-color 0.3s ease;
	font-size: 18px;
}

.buttons .viewMore:hover {
	background-color: green;
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

		<h1 class="headingText">Job Details</h1>

		<%
		String loc = request.getParameter("loc");
		String cat = request.getParameter("cat");
		String msg = "";

		JobDAO dao = new JobDAO(DBConnect.getConn());
		List<Jobs> list = null;

		if ("lo".equals(loc) && "ca".equals(cat)) {
	        msg = "Job Not Available!!";
	    } else if ("lo".equals(loc) || "ca".equals(cat)) {
	        list = dao.getJobsOrLocationCategory(cat, loc);
	    } else {
	        list = dao.getJobsAndLocationCategory(cat, loc);
	    }

	    if (list == null || list.isEmpty()) {
	    %>
		<h2 style="color: red; text-align: center;">Job Not Available!!</h2>
		<%
	    } else {
	        for (Jobs j : list) {
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
				<label>Description:</label> <span> <%
 if (j.getDescription().length() > 0 && j.getDescription().length() < 120) {
 %>
					<p><%=j.getDescription()%></p> <%
 } else {
 %>
					<p><%=j.getDescription().substring(0, 120)%>...
					</p> <%
 }
 %>
				</span>
			</div>

			<div class="job-field">
				<label>Publish-Date:</label> <span> <%=j.getPdate()%>
				</span>
			</div>
			<a href="oneJobView.jsp?id=<%=j.getId()%>" class="buttons"><button
					class="viewMore">View More</button></a>
		</div>
		<%
		}
		} 
		%>

	</div>

	<%@ include file="components/footer.jsp"%>
</body>
</html>
