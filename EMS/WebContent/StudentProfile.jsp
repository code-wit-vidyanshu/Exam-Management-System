
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
	position: relative;
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
					String username = (String) session.getAttribute("username");
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
						<a class="dropdown-item" href="StudentDashBoard.jsp">Home</a><a
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
				String email = (String) session.getAttribute("useremail");
				String name = (String) session.getAttribute("username");
				String phonenumber = (String) session.getAttribute("userphonenumber");
				String password = (String) session.getAttribute("userpassword");
				String organisation = (String) session.getAttribute("userorganisation");

				response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

				if (email == null || name == null || phonenumber == null || password == null) {
					response.sendRedirect("StudentLogin.jsp");
				}
				%>
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

					<form action="StudentUpdateProfile" method="post"
						style="max-width: 700px; margin: 0 auto;">
						<div class="form-group row">
							<label for="studentName"
								class="col-sm-3 col-form-label color-text">Student Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="studentName"
									value="<%=name%>" name="studentName" required>
							</div>
						</div>

						<div class="form-group row">
							<label for="phoneNumber"
								class="col-sm-3 col-form-label color-text color-text-label ">Phone
								Number</label>
							<div class="col-sm-9">
								<input type="tel" class="form-control" id="phoneNumber"
									name="phoneNumber" value="<%=phonenumber%>" required>
							</div>
						</div>
						<div class="form-group row">
							<label for="Organisation"
								class="col-sm-3 col-form-label color-text color-text-label">Organisation
								Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="organisationName"
									name="organisation" value="<%=organisation%>"
									disabled="disabled">
							</div>
						</div>


						<div class="form-group row">
							<label for="email"
								class="col-sm-3 col-form-label color-text color-text-label">Email</label>
							<div class="col-sm-9">
								<input type="email" class="form-control" id="email"
									name="mailid" value="<%=email%>" disabled="disabled">
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

						<div class="form-group row button-div">
							<div class="col-sm-3"></div>
							<div class="col-sm-9">
								<button type="submit" class="btn btn-primary btn-sm mr-4">Update
									Info</button>
								<button type="button" class="btn btn-primary btn-sm"
									onclick="redirectToPage()">Update Password</button>
							</div>
						</div>
					</form>
				</div>
			</section>
		</div>
	</section>

	<script>
		function redirectToPage() {
			// Replace 'destination.html' with the URL of the page you want to redirect to
			window.location.href = 'StudentUpdatePassword.jsp';
		}
	</script>


	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
