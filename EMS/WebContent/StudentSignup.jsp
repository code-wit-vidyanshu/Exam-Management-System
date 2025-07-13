<%@page import="com.onlineexam.Dao.OrganisationDao"%>
<%@page import="com.onlineexam.model.Organisation"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.main.util.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Signup</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
	background-color: #dbe5ed;
	font-family: Castoro;
}

.signup-container {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.signup-form {
	background-color: white;
	padding: 40px;
	width: 500px;
	border-radius: 20px;
}

.form-group label {
	font-weight: bold;
	color: #032D64;
	/* Change label text color */
}

.signup-image {
	border-radius: 20px;
	margin-top: 80px;
	/* Adjust margin as needed */
	align-self: center;
	/* Center vertically */
}

.signup-image img {
	width: 100%;
	/* Adjust the width of the image to fill its container */
	height: auto;
	/* Maintain aspect ratio */
}

/* Custom style for larger container */
.custom-container {
	max-width: 1200px;
	/* Adjust the maximum width of the container */
	width: 100%;
	/* Take up full width */
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
</style>
</head>

<body>
	<nav class="navbar">

		<%! DBConnection dbConnection = DBConnection.getDbConnnection();
		List<Organisation> organisations = new ArrayList<>();%>
		<%
		OrganisationDao Organisation = new OrganisationDao(dbConnection);
		organisations = Organisation.findAll();
		%>



		<div>
			<h1 class="logo " style="margin-left: 0px;">Exam Manager</h1>
		</div>
		<div>
			<ul class="nav-links">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="AboutUs.jsp">About Us</a></li>
				<li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact
						Us</a></li>
			</ul>
		</div>
	</nav>
	<div class="container-fluid custom-container signup-container">
		<div class="row">
			<div class="col-md-6">
				<div class="signup-image">
					<img class="img-fluid" alt="girlthinking"
						src="src/images/signup.png">
				</div>
			</div>
			<div class="col-md-6">
				<div class="signup-form">
					<div class="card">
						<div class="card-header">
							<h3 class="text-center"
								style="color: #032D64; font-weight: bold;">Student Signup</h3>
						</div>



						<div class="card-body">
							<form id="signup-form" action="signup" method="post">
								<div class="form-group">
									<label for="studentName">Student Name</label> <input
										type="text" class="form-control" id="studentName"
										placeholder="example" name="studentName" required>
								</div>
								<div class="form-group">
									<label for="email">Email</label> <input type="email"
										placeholder="example@gmail.com" class="form-control"
										id="email" name="email" required>
								</div>
								<div class="form-group">
									<label for="organizationName">Organization Name</label> <select
										name="organisation" class="form-control" id="organizationName"
										required>
										<%
										for (Organisation org : organisations) {
										%>
										<option value="<%=org.getOrganisationName()%>">
											<%=org.getOrganisationName()%></option>
										<%
										}
										%>
									</select>
								</div>

								<div class="form-group">
									<label for="phoneNumber">Phone Number</label> <input type="tel"
										class="form-control" id="phoneNumber" name="phoneNumber"
										placeholder="1234567890" required>
								</div>
								<div class="form-group">
									<label for="password">Password</label> <input type="password"
										placeholder="Enter password(Min 8 characters)"
										class="form-control" id="password" name="password"
										pattern=".{8,}" required>
								</div>
								<%
								String err=(String)session.getAttribute("error");
								
								if (err != null) {
								%>
								<h5 style="color: red; display: flex; justify-content: center"><%=err%></h5>
								<%
								//session.removeAttribute("error");
								session.removeAttribute("error");
								}
								%>
								<div class="form-group">
									<button type="submit" class="btn btn-primary btn-block">Sign
										Up</button>
								</div>
							</form>
						</div>
						<div class="text-center">
							<h6>
								Already have an account? <a href="StudentLogin.jsp">Login</a>
								here.
							</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>
