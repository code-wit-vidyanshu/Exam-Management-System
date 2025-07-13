<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Login</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
body {
    background-color: #dbe5ed;
    font-family: Castoro;
}

.login-container {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh; /* Adjust this value to make the container larger */
}

.login-form {
    background-color: white;
    padding: 40px;
    border-radius: 20px;
    width: 100%; /* Make the form take up the entire width */
    max-width: 400px; /* Limit the maximum width if needed */
}

.form-group label {
    font-weight: bold;
    color: #032D64;
    /* Change label text color */
}

.login-image {
    display: none; /* hide the image */
}
.backgroundimage {
	background-image: url('https://s.tmimgcdn.com/scr/800x500/328500/blue-wave-water-background-design-vector-v27_328555-original.jpg');
	background-size: cover; /* Cover the entire section */
	background-position: center; /* Center the image */
	background-repeat:inherit;
}

/* Custom style for larger container */
.custom-container {
    
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
        <div>
            <h1 class="logo " style="margin-left: 0px;">Exam Buddy</h1>
        </div>
        <div>
            <ul class="nav-links">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="AboutUs.jsp">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="ContactUs.jsp">Contact Us</a></li>
            </ul>
        </div>
    </nav>
    <section class="backgroundimage">
    <div class="container-fluid custom-container login-container ">
        <div class="row">
            <div class="col-md-12 text-center">
                <div class="login-form">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="text-center"
                                style="color: #032D64; font-weight: bold;">Student Login</h3>
                        </div>
                        <div class="card-body">
                            <form action="Studentlogin" method="post">
                                <div class="form-group">
                                    <label for="email">Email</label> 
                                    <input type="email"
                                        class="form-control" id="email" name="mailid" 
                                        placeholder="Enter your emailid"    required>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                     <input type="password"
                                        class="form-control" id="password" name="password"
                                        placeholder="Enter your password" required>
                                </div>
                                <%
                                String err = (String) session.getAttribute("error");
                                if (err != null) {
                                %>
                                <h5 style="color: red; display: flex; justify-content: center"><%=err%></h5>
                                <%
                                session.removeAttribute("error");
                                }
                                %>
                                
                                <button type="submit" class="btn btn-primary btn-block">Login</button>
                            </form>
                        </div>
                        <div class="text-center" >
                            <h6>
                                <a href="ForgetPassword.jsp">Forgot Password?</a>
                            </h6>
                        </div>
                        <div class=" text-center">
                            <h6>
                                Don't have an account? <a href="StudentSignup.jsp">Sign up</a> here.
                            </h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</body>

</html>
