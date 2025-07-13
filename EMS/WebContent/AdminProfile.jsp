<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Profile</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Global Styles */
body {
	font-family: Castoro;
}

/* Navigation Bar Styles */
nav {
	background-color: #032D64;
	color: #fff;
	padding: 10px 0;
}

.navbar .container {
	display: flex;
	justify-content: space-between; /* Logo on left, links on right */
}

.navcontainer {
	margin-left: 0px;
}

.logo {
	color: #fff;
	margin-right: 20px; /* Add margin between logo and links */
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

/* Hero Section Styles */
.hero {
	background-color: #dbe5ed;
	padding: 100px 0;
	text-align: center;
	font-size: large;
}

.btn-primary {
	background-color: #032D64;
	/* Change button background color */
	border-color: #032D64;
	/* Change button border color */
}

.btn-primary:hover {
	background-color: #032041;
	/* Change button hover background color */
	border-color: #032041;
	/* Change button hover border color */
}

.btn-primary:focus {
	box-shadow: 0 0 0 0.2rem rgba(3, 45, 100, 0.5);
	/* Change button focus shadow color */
}

/* Dropdown Menu Styles */
.dropdown-menu {
	background-color: #032D64; /* Background color */
}

.dropdown-menu a {
	color: #fff !important; /* Text color */
}

.dropdown-menu a:hover {
	background-color: #007bff !important; /* Hover background color */
}

.AvailExam {
	margin-top: 20px;
	margin-left: 100px;
	margin-right: 100px;
	padding: 50px 0;
}

.Exam-container {
	min-height: 700px;
	background-color: rgb(128, 167, 196);
	border: 2px solid rgba(0, 0, 0, 0.5);
	border-radius: 10px;
}

.color-text {
	color: #032D64;
	font-weight: bold;
	font-size: 20px;
}

/* Adjusted width for labels */
.color-text-label {
	width: 150px; /* Adjust the width as needed */
	white-space: nowrap; /* Prevent label text from wrapping */
}

/* Adjusted form container */
.formprofile {
	max-width: 700px; /* Adjust the max-width as needed */
	margin: 0 auto; /* Center the form horizontally */
	padding: 20px; /* Add some padding for spacing */
	padding-top: 50px;
}

.button-div {
	margin-top: 50px;
}
</style>
</head>
<body>
	<!-- Navigation Bar -->
	<nav class="navbar">

		<div>
			<h1 class="logo " style="margin-left: 0px;">Exam Buddy</h1>
		</div>
		<div>
			<ul class="nav-links">
				<li class="nav-item">
					<%
					String username = (String) session.getAttribute("adminmail");
					%>
					<h5>
						Hello
						<%=username%>
						!
					</h5>


				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Menu </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="AdminDashboard.jsp">AdminPage</a> <a
							class="dropdown-item" href="logout">Logout</a>
					</div></li>
			</ul>
		</div>
	</nav>

	<!-- Main Section -->

	<section class="AvailExam">
		<div class="container Exam-container">
			<h2 Class="text-center" style="padding-top: 20px;">My Profile</h2>
			<section>
				<%
				String email = (String) session.getAttribute("adminmail");
				String password = (String) session.getAttribute("adminpassword");
			

				response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

				if (email == null || password == null) {
					response.sendRedirect("AdminLogin.jsp");
				}
				%>
				<div class="formprofile">
					<form
						style="max-width: 700px; margin: 0 auto;">
						<div class="form-group row">
							<label for="AdminEmail"
								class="col-sm-3 col-form-label color-text">Admin Email </label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="studentName"
									value="<%=email%>" name="adminemail" disabled>
							</div>
						</div>

						

						<div class="form-group row">
							<label for="password"
								class="col-sm-3 col-form-label color-text color-text-label">Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="password"
									name="password" value="<%=password%>" disabled>
							</div>
						</div>

						
					</form>
				</div>
			</section>
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
