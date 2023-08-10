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
	
	.jobHeading{
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

    .job-form input[type="text"],
    .job-form textarea,
    .job-form select {
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
      top: 158vh;
    }
  </style>
</head>
<body>

  <%@include file="components/navbar.jsp"%>

  <div class="content">
    <form class="job-form" action="submit_job.jsp" method="post">
    
    	<h1 class="jobHeading">Add a New Job Listing</h1>
      	<label for="jobTitle">Enter Title:</label>
      	<input type="text" id="jobTitle" name="jobTitle" required>

      	<label for="location">Location:</label>
      	<select id="location" name="location" required>
        	<option value="">Select Location</option>
        	<option value="New York">New York</option>
        	<option value="Los Angeles">Los Angeles</option>
        	<option value="Chicago">Chicago</option>
      </select>

      	<label for="category">Category of Job:</label>
      	<select id="category" name="category" required>
        	<option value="">Select Category</option>
        	<option value="Engineering">Engineering</option>
        	<option value="Sales">Sales</option>
        	<option value="Marketing">Marketing</option>
      </select>

      	<label for="status">Status:</label>
      	<select id="status" name="status" required>
        	<option value="">Select Status</option>
        	<option value="Active">Active</option>
        	<option value="Inactive">Inactive</option>
      </select>

      	<label for="jobDescription">Enter Description:</label>
      	<textarea id="jobDescription" name="jobDescription" rows="6" required></textarea>

      	<button type="submit" >Submit</button>
    </form>
  </div>


  <%@ include file="components/footer.jsp" %>
</body>
</html>
