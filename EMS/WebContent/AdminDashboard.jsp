<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.main.util.DBConnection"%>
<%@page import="com.main.Servlet.ResultServlet"%>

<%@page import="com.onlineexam.Dao.ExamTemplateDao"%>
<%@page import="com.onlineexam.model.ExamTemplate"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Exam Management System</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

nav {
	background-color: #032D64;
	color: #fff;
	padding: 10px;
	position: fixed;
	top: 0;
	width: 100%;
	z-index: 1000;
}

body {
	font-family: Castoro;
	position: relative;
}

.navbar .container {
	display: flex;
	justify-content: space-between;
}

.navcontainer {
	margin-left: 0px;
}

.logo {
	color: #fff;
	margin-right: 20px;
}

.nav-links {
	list-style-type: none;
	margin: 0;
}

.nav-links li {
	display: inline-block;
	margin-left: 20px;
	font-size: 20px;
}

.nav-links li:first-child {
	margin-left: 0;
}

.nav-links li a {
	color: #fff;
	text-decoration: none;
}

.dropdown-menu {
	background-color: #032D64; /* Background color */
}

.dropdown-menu a {
	color: #fff !important; /* Text color */
}

.dropdown-menu a:hover {
	background-color: #007bff !important; /* Hover background color */
}

/* Vertical Menu Styles */
.vertical-menu {
	background-color: #1e3c63;
	width: 25vh;
	height: 100vh;
	padding: 20px;
	font-size: 20px;
	position: fixed;
	top: 70px; /* Adjusted to start below the navigation bar */
	left: 0;
	bottom: 0;
	z-index: 1;
}

.menu-option {
	margin-bottom: 15px;
}

.menu-option:hover {
	background-color: #fff;
	color: black;
	ox-shadow: 0px 0px 20px #033373;
	text-decoration: none;
}

.menu-link {
	color: #fff;
	text-decoration: none;
	display: block;
	padding: 10px 0;
}

.menu-link:hover {
	text-decoration: none;
}

.firstoption {
	padding-top: 5vh;
}

.AvailExam {
	margin: 20px;
	margin-left: calc(25vh + 20px);
	padding: 50px 0;
	overflow-y: auto; /* Added */
	max-height: calc(100vh - 120px); /* Added */
}
.highlight-current{
	background-color: #fff;
	color: black;
	ox-shadow: 0px 0px 20px #033373;
	text-decoration: none;
}



/* Add shadow and hover effect to cards */
.card {
	transition: box-shadow 0.3s ease, background-color 0.3s ease;
	border: 1px solid #66a6fa;
	border-radius: 20px;
}

.card:hover .card-body {
	background-color: #66a6fa; /* Change background color on hover */
	color: black;
	box-shadow: 0px 0px 20px #033373;
	border: 1px solid #66a6fa;
	border-radius: 20px;
}

tbody tr:nth-child(even) {
	background-color: #dce8fc;
}
</style>
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar fixed-top">
		<div>
			<h1 class="logo">Exam Buddy</h1>
		</div>
		<div>
			<ul class="nav-links">
				<li class="nav-item">
					<%
					response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
					String adminmail = (String) session.getAttribute("adminmail");
					%>
					<h5>
						Hello
						<%=adminmail%>
						!
					</h5>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Menu </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="AdminProfile.jsp">My Profile</a>
							<a class="dropdown-item" href="logout">Logout</a>
					</div></li>
			</ul>
		</div>
	</nav>

	<!-- Vertical Menu -->
	<div class="vertical-menu firstoption ">
		<div class="menu-option text-center">
			<a href="#" class="menu-link highlight-current">DashBoard</a>
		</div>
		<div class="menu-option text-center">
			<a href="createSubject.jsp" class="menu-link">Create New Exam</a>
		</div>
		<div class="menu-option text-center">
			<a href="AvailableExam.jsp" class="menu-link">Available Exams</a>
		</div>
		<div class="menu-option text-center">
			<a href="ShowExams.jsp" class="menu-link">Show Exams</a>
		</div>
		<div class="menu-option text-center">
			<a href="AvailableStudents" class="menu-link">Students</a>
		</div>
		<div class="menu-option text-center">
			<a href="ShowResult.jsp" class="menu-link">Results</a>
		</div>
		<!-- Add more options as needed -->
	</div>

	<section class="AvailExam  mt-5">
		<div class="container ">
			<div class="row justify-content-center mt-4">
				<div class="col-md-4">
					<div class="card shadow-lg text-white"
						style="background-color: #033373">
						<div class="card-body">
							<h5 class="card-title">Total Exams</h5>
							<p class="card-text">Number of exams available</p>
							<!-- You can display dynamic data here if needed -->
							<h3 class="card-number">10</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card shadow-lg text-white"
						style="background-color: #033373">
						<div class="card-body">
							<h5 class="card-title">Total Students</h5>
							<p class="card-text">Number of total student registered</p>
							<!-- You can display dynamic data here if needed -->
							<h3 class="card-number">5</h3>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="card shadow-lg text-white"
						style="background-color: #033373">
						<div class="card-body">
							<h5 class="card-title">Number of Subjects</h5>
							<p class="card-text">Total number of subjects available</p>
							<!-- You can display dynamic data here if needed -->
							<h3 class="card-number">15</h3>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<%!DBConnection dbConnection = DBConnection.getDbConnnection();
	List<ExamTemplate> examTemplate;%>
	<%
	System.out.println("db" + dbConnection);
	ExamTemplateDao etdao = new ExamTemplateDao(dbConnection);
	examTemplate = etdao.findtop();
	%>

	<h2 style="margin-left: 47%;">Recently added exams</h2>

	<section class="AvailExam" style="padding-top: 0px;">
		<div class="container">
			<section class="scrollable-section">
				<table class="table">
					<thead style="background-color: #032D64; color: #fff;">
						<tr>
							<th scope="col">Exam Name</th>
							<th scope="col">Organization</th>
							<th scope="col">Description</th>
						</tr>
					</thead>
					<tbody>
						<%
						for (ExamTemplate eto : examTemplate) {
						%>
						<tr>
							<td scope="col"><%=eto.getSubjectname() %></td>
							<td scope="col"><%=eto.getOrganisationame()%></td>
							<td scope="col"><%=eto.getDescription()%></td>
						</tr>
						<%
						}
						%>


						<!-- Add more exam details as needed -->
					</tbody>
				</table>
			</section>
			<p>(Note: This table represents the most recent exam details
				added to our system.)</p>
		</div>
	</section>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
