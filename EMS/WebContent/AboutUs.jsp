
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
.logo {
	color: #fff;
	margin-right:20px; /* Add margin between logo and links */
}


.backgroundimage {
    background-image: url('https://rdacustica.com/wp-content/uploads/2018/12/Contact-us-background.jpg');
    background-size: cover; /* Cover the entire section */
    background-position: center; /* Center the image */
}

/* Global Styles */
.myul {
    margin-left: 0px;
    padding-left: 0px;
    text-align: left;
}

/* Navigation Bar Styles */
nav {
    background-color: #032D64;
    color: #fff;
    padding: 10px 0;
}

.navbar .container {
    display: flex;
    justify-content: space-between;
}

.logo {
    color: #fff;
}

.nav-links {
    list-style-type: none;
    margin: 0;
    display: flex;
}

.nav-links li {
    margin-left: 20px;
}

.nav-links li:first-child {
    margin-left: 0;
}

.nav-links li a {
    color: #fff;
    text-decoration: none;
}
.navbar-nav {
        padding-right: 0;
    }
    .navbar-nav .nav-item:hover .nav-link {
        color: #fafaf9; /* Change the hover color as desired */
    }

    /* Dropdown menu hover effect */
    .navbar-nav .dropdown-menu .dropdown-item:hover {
        background-color: #fdfdfd; /* Change the hover background color as desired */
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

/* Hero Section Styles */
.hero {
	
    color: white;
    padding: 100px 0;
    text-align: center;
    font-size: large;
}

/* Features Section Styles */
.features {
    padding: 50px 0;
    color: white;
}

.feature {
	
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    transition: all 0.3s ease;
    color: black;
}
//

/* Features Section Styles */
.features {
    padding: 50px 0;
    color: white;
}

/* .feature {
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    transition: all 0.3s ease;
    color: black;
} */

.feature p {
    margin-top: 5vh;
}

/* Responsive styles */
@media (min-width: 768px) {
    .feature {
        margin-left: auto;
        margin-right: auto;
        max-width: 800px; /* Adjust max-width as needed */
    }
}




/* .feature p {
    margin-top: 5vh;
} */

/* Footer Styles */
footer {
    margin-bottom: 0px;
    background-color: #032D64;
    color: #fff;
    padding: 20px 0;
    text-align: center;
    background-color: #032D64;
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

.AvailExam .container {
    width: 1800px;
    max-width: none; /* Disable max-width */
}

.AvailExam {
    margin-top: 20px;
    margin-left: 50px;
    margin-right: 50px;
    padding: 50px 0;
    max-width: 1200px; /* Set a maximum width */
    width: 100%; /* Take up full width of container */
}

.Exam-container {
    min-height: 640px;
    background-color: rgb(128, 167, 196);
    border: 2px solid rgba(0, 0, 0, 0.5);
    border-radius: 10px;
}


/* Responsive styles
@media (max-width: 768px) {
    .feature {

        margin-left: 20px;
        margin-right: 20px;
    } */
	 /* Navbar hover effects */
	
</style>
</head>
<body>
	<!-- Navigation Bar -->
	<!-- <nav class="navbar">

		<div>
			
		</div>
		<div>
			<ul class="nav-links">
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
				<li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact
						Us</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#"
					id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> Login </a>
					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="navbarDropdownMenuLink">
						<a class="dropdown-item" href="StudentLogin.jsp">Login as
							Student</a> <a class="dropdown-item" href="AdminLogin.jsp">Login
							as Admin</a>
					</div></li>
			</ul>
		</div>
	</nav> 
	<!-- Navigation Bar -->
<!-- Navigation Bar -->
<!-- <nav class="navbar navbar-expand-lg navbar-dark bg-blue">
    <div class="container-fluid justify-content-between">
       
        <a class="navbar-brand" href="#" style="font-family: 'Arial Black', Gadget, sans-serif; font-size: 24px;">
			<img src="1.png" alt="Logo" style="height: 50px;margin-bottom: 3px; margin-right: 14px;">Exam Buddy</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav justify-content-end">
                <li class="nav-item mx-3"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item mx-3"><a class="nav-link" href="#">About Us</a></li>
                <li class="nav-item mx-3"><a class="nav-link" href="ContactUs.jsp">Contact Us</a></li>
                <li class="nav-item dropdown mx-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Login </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="StudentLogin.jsp">Login as Student</a>
                        <a class="dropdown-item" href="AdminLogin.jsp">Login as Admin</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav> -->
<!-- Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-blue">
    <div class="container-fluid justify-content-between">
        <!-- <h1 class="logo">Exam Buddy </h1> -->
        <a class="navbar-brand" href="#" style="font-family: 'Arial Black', Gadget, sans-serif; font-size: 24px;">
      <img src="src/images/1.png" alt="Logo" style="height: 50px;margin-bottom: 3px; margin-right: 14px;">Exam Buddy</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item mx-3"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item mx-3"><a class="nav-link" href="#">About Us</a></li>
                <li class="nav-item mx-3"><a class="nav-link" href="ContactUs.jsp">Contact Us</a></li>
                <li class="nav-item dropdown mx-3">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Login </a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="StudentLogin.jsp">Login as Student</a>
                        <a class="dropdown-item" href="AdminLogin.jsp">Login as Admin</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</nav>



	<!-- Main Section -->
	<section class="backgroundimage">
		<section class="hero">
			<div class="container" style="color: black; margin-bottom: 0px;">
				<h2 style="font-size: 45px; color: black;">About Us</h2>
				<p>
					Welcome to our Online Exam Management System, your one-stop
					solution for seamless exam creation, administration, and grading. <br>
					With a dedicated team of five passionate individuals, we strive to
					revolutionize the way exams are conducted and managed, <br>
					making the process more efficient, secure, and user-friendly.
				</p>
			</div>
		</section>

		<!-- Features Section -->
		<section class="hero feature">
			<div class="container" style="color: black;">
				<h4>Our Team</h4>

				Our team consists of talented professionals who bring a diverse
				range of skills and expertise to the table. From software
				development to user experience design, we work collaboratively to
				ensure that our platform meets the highest standards of quality and
				reliability. <br>Meet the minds behind our innovative solution:

				<ul class="myul">
					<li><b>John Doe </b> - Lead Developer: With years of
						experience in software development, John oversees the technical
						aspects of our platform, ensuring smooth functionality and robust
						security measures.</li>
					<li><b>Emily Smith </b>- UX/UI Designer: Emily is dedicated
						to creating an intuitive and visually appealing user interface
						that enhances the user experience and makes navigation seamless
						for both administrators and students.</li>
					<li><b>Michael Johnson </b>- QA Engineer: Michael
						meticulously tests every aspect of our system to identify and
						address any bugs or issues, ensuring that our platform operates
						flawlessly and delivers accurate results.</li>
					<li><b>Sarah Davis</b> - Customer Support Specialist: Sarah
						is committed to providing exceptional customer service, assisting
						users with any inquiries or concerns they may have and ensuring a
						positive experience for all.</li>
					<li><b>Alexandra Brown</b> - Marketing Manager: Alexandra is
						responsible for spreading the word about our platform, engaging
						with our audience, and fostering relationships with educational
						institutions and organizations.</li>
				</ul>
			</div>
		</section>


		<section class="hero feature" style="margin-top: 3vh;">
			<div class="container" style="color: black;">
				<h4>Our App Our Online Exam Management</h4>

				System offers a comprehensive suite of features designed to
				streamline the exam process from start to finish. Whether you're an
				administrator creating exams or a student taking them, our platform
				provides all the tools you need for a seamless experience. Here are
				some of the key features: Exam Creation and Management:
				Administrators can easily create, customize, and store exam
				templates with various question types and parameters, allowing for
				flexibility and customization to meet specific requirements. Exam
				Administration and Taking: Students can log in securely, select
				exams from a user-friendly interface, and complete them within set
				time limits. Our platform ensures exam integrity with features such
				as randomized question order and secure browser lockdown. Grading
				and Result Generation: Our system automates grading for
				multiple-choice questions, saving time and ensuring accuracy. For
				essay-type responses, manual grading is facilitated with an
				intuitive interface. Exam results are promptly generated and
				displayed to students, providing instant feedback on their
				performance. At our Online Exam Management System, we are committed
				to empowering educators and students alike with a reliable,
				efficient, and user-friendly platform for conducting exams. Join us
				in revolutionizing the way exams are conducted and managed in the
				digital age.
			</div>
		</section>

	</section>

	<!-- Footer -->
	<footer>
		<div class="container">
			<p>&copy; 2024 Online Exam Management System. All rights
				reserved.</p>
		</div>
	</footer>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>