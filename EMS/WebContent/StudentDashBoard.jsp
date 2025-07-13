<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
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
	margin-top:20px;
	margin-left:100px;
	margin-right:100px;	
	padding: 50px 0;
	
}
.Exam-container{
min-height: 700px;
background-color:  rgb(128, 167, 196);
 border:2px solid  rgba(0, 0, 0, 0.5);
  border-radius:10px;}




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

				response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
				
				
				String username = (String) session.getAttribute("username");
				%>
				<h5>Hello   <%=username%> !</h5>
								
				
				 </li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Menu </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="StudentProfile.jsp">My Profile</a> 
						<a class="dropdown-item" href="#">My Result</a>
						<a class="dropdown-item" href="#">Meet Our Faculties</a>
						<a class="dropdown-item" href="#">FeedBack</a>  
						<a class="dropdown-item" href="logout">Logout</a>
					</div></li>
			</ul>
		</div>
	</nav>

	<!-- Main Section -->
	
<section class="AvailExam">
    <div class="container Exam-container">
        <form action="ShowQuestions" method="post">
            <h2 class="text-center" style="padding-top: 20px;">Available Exams of <%= session.getAttribute("userorganisation") %></h2>
            <h6 class="text-center">Choose The Exam You Want To Give.</h6>

            <div class="subject-list text-center">
                <% 
                    ArrayList<String> currSubjects = (ArrayList<String>)session.getAttribute("subjects");
                    for(String s : currSubjects){
                %>
                    <input type="radio" id="<%= s %>" name="selectedSubject" value="<%= s %>" class="subject-radio">
                    <label for="<%= s %>" class="subject-label"><%= s.toUpperCase() %></label><br>
                <% } %>
            </div>
            
            <div class="text-center">
                <input type="submit" value="Start Exam" class="btn btn-primary">
            </div>
        </form>
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
	