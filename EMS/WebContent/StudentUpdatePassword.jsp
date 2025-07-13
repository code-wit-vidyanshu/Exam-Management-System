
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript">
	function givealert() {
		alert("Details are updated!");
	}
</script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap"
	rel="stylesheet">

<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: IBM Plex Sans, sans-serif;
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
	max-width: 900px; /* Adjust the max-width as needed */
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
					String username = (String) session.getAttribute("username");
					%>
					<h5>
						Hola
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
						<a class="dropdown-item" href="StudentDashBoard.jsp">Home</a>  <a
							class="dropdown-item" href="logout">Logout</a>
					</div></li>
			</ul>
		</div>
	</nav>

	<!-- Main Section -->
	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	%>
	<%
	String password = (String) session.getAttribute("userpassword");
	%>

	<section class="AvailExam">
		<div class="container Exam-container">
			<h2 Class="text-center" style="padding-top: 20px; color: #032D64;">My
				Profile</h2>
			<section>
				<div class="formprofile">

					<%
					String err = (String) session.getAttribute("error");
					if (err != null) {
					%>
					<h5 style="color: red; display: flex; justify-content: center"><%=err%></h5>
					<%
					session.removeAttribute("error");
					}
					%>



					<form action="StudentUpdatePassword" method="post"
						style="max-width: 1000px; margin: 0 auto;">
						<div class="form-group row">
							<label for="currentPassword"
								class="col-sm-3 col-form-label color-text">Current
								Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="currentPassword"
									name="currentPassword"
									placeholder="Enter your current password" required>
							</div>
						</div>
						<div>
							<input type="hidden" id="sessionPassword" value="<%=password%>">
						</div>
						<div class="form-group row">
							<label for="newPassword"
								class="col-sm-3 col-form-label color-text color-text-label ">
								Enter New Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control" id="newPassword"
									placeholder="Enter your password" name="newPassword" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="confirmNewPassword"
								class="col-sm-3 col-form-label color-text color-text-label">Confirm
								Password</label>
							<div class="col-sm-9">
								<input type="password" class="form-control"
									id="confirmNewPassword" name="confirmNewPassword"
									placeholder="Confirm your password"required">
							</div>
						</div>


						<div class="form-group row button-div">
							<div class="col-sm-4"></div>

							<button type="submit" class="btn btn-primary btn-sm">Update
								Password</button>

						</div>
					</form>
				</div>
			</section>
		</div>
	</section>


	<script>
		document
				.getElementById("passwordForm")
				.addEventListener(
						"submit",
						function(event) {
							var currentPassword = document
									.getElementById("currentPassword").value;
							var newPassword = document
									.getElementById("newPassword").value;
							var confirmNewPassword = document
									.getElementById("confirmNewPassword").value;
							var sessionPassword = document
									.getElementById("sessionPassword").value; // Retrieve session password

							if (currentPassword !== sessionPassword) {
								// Show an alert if current password does not match session password
								alert("Current password is incorrect.");
								event.preventDefault(); // Prevent form submission
							} else if (newPassword !== confirmNewPassword) {
								// Show an alert if new passwords do not match
								alert("New passwords do not match.");
								event.preventDefault(); // Prevent form submission
							}
						});
	</script>
	<%
	if (!session.isNew() && session.getAttribute("isupdate") != null && (boolean) session.getAttribute("isupdate")) {
		session.setAttribute("isupdate", null);
	%>
	<script>
		givealert();
	</script>
	<%
	}
	%>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

