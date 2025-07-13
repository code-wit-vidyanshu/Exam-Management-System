<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Exam Management System</title>
<!-- Bootstrap CSS -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;1,100;1,200;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: IBM Plex Sans, sans-serif;
}

.backgroundimage {
    background-image: url('https://images.unsplash.com/uploads/141103282695035fa1380/95cdfeef?q=80&w=1430&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');
    background-size: cover;
    background-position: center;
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
    padding: 100px 0;
    text-align: center;
}

/* Features Section Styles */
.features {
    padding: 50px 0;
}

.feature {
    padding: 20px;
    border-radius: 10px;
    min-height: 100px;
}

/* Footer Styles */
footer {
    background-color: #032D64;
    color: #fff;
    padding: 20px 0;
    text-align: center;
}

@media (max-width: 768px) {
    .navbar .container {
        flex-direction: column;
        align-items: center;
    }
    .nav-links {
        margin-top: 20px;
    }
    .nav-links li {
        margin: 10px 0;
    }
    .contact-info,
    .get-in-touch {
        margin-left: auto;
        margin-right: auto;
        max-width: 500px;
    }
}

/* Contact Information Section */
.contact-info {
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    margin-bottom: 20px;
}

.contact-info h4 {
    margin-bottom: 10px;
}

.contact-info ul {
    list-style-type: none;
    padding: 0;
}

.contact-info ul li {
    margin-bottom: 10px;
}

/* Get in Touch Section */
.get-in-touch {
    background-color: white;
    padding: 20px;
    border-radius: 10px;
    margin-bottom: 20px;
}

.get-in-touch h4 {
    margin-bottom: 10px;
}

.get-in-touch p {
    margin-bottom: 10px;
}

/* Centered Container for Cards */
.centered-container {
    margin-left: auto;
    margin-right: auto;
    max-width: 800px;
}
</style>
</head>
<body>
    <!-- Navigation Bar -->
    <!-- <nav class="navbar">
        <div>
            <h1 class="logo">Exam Buddy</h1>
        </div>
        <div>
            <ul class="nav-links">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact Us</a></li>
                <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Login</a>
                    <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                        <a class="dropdown-item" href="StudentLogin.jsp">Login as Student</a>
                        <a class="dropdown-item" href="AdminLogin.jsp">Login as Admin</a>
                    </div>
                </li>
            </ul>
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
                  <li class="nav-item mx-3"><a class="nav-link" href="AboutUs.jsp">About Us</a></li>
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
            <div class="container">
                <h2>Contact Us</h2>
                <p>Thank you for considering our Online Exam Management System. If you have any inquiries, feedback, or require assistance, please don't hesitate to get in touch with us. We are here to help and are committed to providing exceptional support to our users.</p>
            </div>
        </section>

        <!-- Features Section -->
        <section class="hero feature">
            <div class="container">
                <div class="centered-container">
                    <div class="card contact-info">
                        <div class="card-body">
                            <h4>Contact Information:</h4>
                            <ul>
                                <li><b>Email:</b> info@exammanagementsystem.com</li>
                                <li><b>Address:</b> Kataria Arcade, 11th floor, Kataria Automobiles Rd, Makarba, Ahmedabad, Gujarat 380051</li>
                                <li><b>Operating Hours:</b> Monday - Friday: 9:00 AM - 5:00 PM (EST)</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section class="hero feature">
            <div class="container">
                <div class="centered-container">
                    <div class="card get-in-touch">
                        <div class="card-body">
                            <h4>Get in Touch:</h4>
                            <p>Feel free to reach out to us via email or phone during our operating hours. Our dedicated team is ready to assist you with any questions you may have regarding our platform, its features, or any technical support you may need. Additionally, you can visit our website for further information and resources.</p>
                            <p>We value your feedback and are continually striving to improve our platform to better serve your needs. Your input helps us enhance our services and make your experience with our Online Exam Management System even better. Thank you for choosing us as your exam management solution. We look forward to assisting you and helping you succeed in your educational endeavors.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer>
            <div class="container">
                <p>&copy; 2024 Online Exam Management System. All rights reserved.</p>
            </div>
        </footer>
    </section>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
