<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Exam Management System</title>

    <!-- Fontawesome Link for Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
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
	background-color: rgba(0, 0, 0, 0.1);
}

/* Global Styles */
.backgroundimage {
	
	background-size: cover; /* Cover the entire section */
	background-position: center; /* Center the image */
}

/* Navigation Bar Styles */
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
	margin-top: 3vh;
	margin-bottom: 30px;
	background-color: #dbe5ed;
	padding: 20px;
	border-radius: 5px;
	transition: all 0.3s ease;
	min-height: 400px;
	color: black;
}

.feature p {
	margin-top: 5vh;
}

.feature:hover {
	transform: translateY(-5px);
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	color: white;
	background-color: #032D64;
	color: #fff;
}

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
/* 
 */
 /* Import Google font - Poppins */
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600&display=swap');
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}

.wrapper {
  max-width: 1100px;
  width: 100%;
  position: relative;
}
.wrapper i {
  top: 50%;
  z-index: 1;
  height: 50px;
  width: 50px;
  cursor: pointer;
  font-size: 1.25rem;
  position: absolute;
  text-align: center;
  line-height: 50px;
  background: #fff;
  border-radius: 50%;
  box-shadow: 0 3px 6px rgba(0,0,0,0.23);
  transform: translateY(-50%);
  transition: transform 0.1s linear;
}
.wrapper i:active{
  transform: translateY(-50%) scale(0.85);
}
.wrapper i:first-child{
  left: -22px;
}
.wrapper i:last-child{
  right: -22px;
}
.wrapper .carousel{
  display: grid;
  grid-auto-flow: column;
  grid-auto-columns: calc((100% / 3) - 12px);
  overflow-x: auto;
  scroll-snap-type: x mandatory;
  gap: 16px;
  border-radius: 8px;
  scroll-behavior: smooth;
  scrollbar-width: none;
}
.carousel::-webkit-scrollbar {
  display: none;
}
.carousel.no-transition {
  scroll-behavior: auto;
}
.carousel.dragging {
  scroll-snap-type: none;
  scroll-behavior: auto;
}
.carousel.dragging .card {
  cursor: grab;
  user-select: none;
}
.card{
  display: flex;
  flex-direction: row;
}
.carousel :where(.card, .img) {
  /* display: flex;
  justify-content: center;
  align-items: center; */
}
.carousel .card {
  scroll-snap-align: start;
  height: 342px;
  list-style: none;
  background: #fff;
  cursor: pointer;
  padding-bottom: 15px;
  flex-direction: column;
  border-radius: 8px;
}
.carousel .card .img {
  background: #8B53FF;
  height: 100px;
  width: 100px;
  position: relative;
  border-radius: 50%;
  top: 2%;
  left: 2%;
}
.card .img img {
  width: 95px;
  height: 95px;
  border-radius: 50%;
  object-fit: cover;
  border: 4px solid #fff;
  position: relative;
  left: 2%;
  top: 2%;
}
.carousel .card h2 {
  font-weight: 500;
  font-size: 1.56rem;
  margin: 30px 0 5px;
}
.carousel .card span {
  color: #6A6D78;
  font-size: 1.31rem;
}

@media screen and (max-width: 900px) {
  .wrapper .carousel {
    grid-auto-columns: calc((100% / 2) - 9px);
  }
}

@media screen and (max-width: 600px) {
  .wrapper .carousel {
    grid-auto-columns: 100%;
  }
}
.carousel .card .info {
  left: 30%;
  padding: 0 20px;
  /* flex-grow: 1; */
  /* display: flex; */
  flex-direction: column;
  justify-content: center;
  position: relative;
  top: -28%;
}

.carousel .card .info h2 {
  margin: 10px 0;
}

.carousel .card .info span {
  font-size: 1rem;
}
/*css*/
.card .review {
  margin-top: 15px;
  padding: 10px;
  background: #f9f9f9;
  border-radius: 8px;
  position: relative;
  left:-33%;
  top:5%;
}

.card .review .stars {
  color: #FFD700; /* color for the stars */
}

.card .review .stars i {
  font-size: 1.2rem;
  margin-right: 2px;
}

.card .review p {
  margin-top: 5px;
  font-size: 1rem;
  color: #444;
}

.card .review .date {
  font-size: 0.9rem;
  color: #888;
  margin-top: 5px;
}
.review1{
	display: flex;
  padding: 0 35px;
  align-items: center;
  justify-content: center;
  min-height: 100vh;
  /* background: linear-gradient(to left top, #031A9A, #8B53FF); */
  /*background: linear-gradient(to left top, #0d1a66cc, #150474c7);*/
  background: linear-gradient(to left top, #1d84c0cc, #4727e4c7);

}
/**/
.image-container {
  max-width: 100%;
  height: auto;
  margin: 0 auto;
}

.img1{
  width: 100%;
  height: auto;
}

</style>

</head>
<body>
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

	<!-- Main Content -->
	<section class="backgroundimage">
		
		<!-- <section class="hero">
			<div class="container">
				<div class="welcome">
				<h2 style="font-size: 45px; color: #007bff;">Welcome to the Online Exam
					Management System</h2>
				<p style="font-size: 40px; color: #007bff;"> Efficiently manage exams, grades, and results with our
					intuitive platform. </p>
				</div>
			</div>
		</section> -->
		<section class="welcome">
			<div class="image-container">
				<img class="img1" src="src/images/welcome.png" alt="dsdd">
			</div>
		</section>

		<!-- Features Section -->
		<section class="features">
			<div class="container">
				<h2 Class="text-center p-3 mb-2 text-white " style="background-color: #032D64;">Key Features</h2>
				<div class="row">
					<div class="col-md-4">
						<div class="feature">
							<h3 Class="text-center">Exam Creation and Management</h3>
							<p>Administrators can create, customize, and store exam
								templates with various question types and parameters.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="feature">
							<h3 Class="text-center">Exam Administration and Taking</h3>
							<p>Students can log in, select exams, and complete them
								within set time limits, with features ensuring exam integrity
								and user experience.</p>
						</div>
					</div>
					<div class="col-md-4">
						<div class="feature">
							<h3 Class="text-center">Grading and Result Generation</h3>
							<p>The system automates grading for multiple-choice
								questions, facilitates manual grading for essay-type responses,
								and promptly generates and displays accurate exam results to
								students.</p>
						</div>
					</div>
				</div>
			</div>
		</section>
	      <!-- Review -->
		<section class="review1">
			<div class="container">
				<div class="wrapper">
					<i id="left" class="fa-solid fa-angle-left"></i>
					<ul class="carousel">
					  <!-- <li class="card">
						<div class="img"><img src="images/img-1.jpg" alt="img" draggable="false"></div>
						
						<h2>Blanche Pearson</h2>
						<span>Sales Manager</span>
					  </li> -->
					  
					  
					  
					  <li class="card">
						<div class="img"><img src="src/images/v1.jpg" alt="img" draggable="false"></div>
						<div class="info">
						  <h2>Joenas Brauers</h2>
						  <span>Web Developer</span>
						  <div class="review">
							<p>Lorem  amet, consectetur adipiscing elit. Seectetur adipiscing elit. Sed pulvinar faucibus mi, eu dignissim metus.aucibus mi, eu dignissim metusaucibus mi, eu dignissim metus</p>
							<span class="stars">&#9733;&#9733;&#9733;&#9733;&#9734;</span>
							<span class="date">April 1, 2024</span>
						  </div>
						</div>
						
					  </li>
					  <li class="card">
						<div class="img"><img src="src/images/img-3.jpg" alt="img" draggable="false"></div>
						<div class="info">
						  <h2>Joenas Brauers</h2>
						  <span>Web Developer</span>
						  <div class="review">
							<p>Lorem  amet, consectetur adipiscing elit. Seectetur adipiscing elit. Sed pulvinar faucibus mi, eu dignissim metus.aucibus mi, eu dignissim metusaucibus mi, eu dignissim metus</p>
							<span class="stars">&#9733;&#9733;&#9733;&#9733;&#9734;</span>
							<span class="date">April 1, 2024</span>
						  </div>
						</div>
					  </li>
					  <li class="card">
						<div class="img"><img src="src/images/img-4.jpg" alt="img" draggable="false"></div>
						<div class="info">
						  <h2>Joenas Brauers</h2>
						  <span>Web Developer</span>
						  <div class="review">
							<p>Lorem  amet, consectetur adipiscing elit. Seectetur adipiscing elit. Sed pulvinar faucibus mi, eu dignissim metus.aucibus mi, eu dignissim metusaucibus mi, eu dignissim metus</p>
							<span class="stars">&#9733;&#9733;&#9733;&#9733;&#9734;</span>
							<span class="date">April 1, 2024</span>
						  </div>
						</div>
					  </li>
					  <li class="card">
						<div class="img"><img src="src/images/img-5.jpg" alt="img" draggable="false"></div>
						<div class="info">
						  <h2>Joenas Brauers</h2>
						  <span>Web Developer</span>
						  <div class="review">
							<p>Lorem  amet, consectetur adipiscing elit. Seectetur adipiscing elit. Sed pulvinar faucibus mi, eu dignissim metus.aucibus mi, eu dignissim metusaucibus mi, eu dignissim metus</p>
							<span class="stars">&#9733;&#9733;&#9733;&#9733;&#9734;</span>
							<span class="date">April 1, 2024</span>
						  </div>
						</div>
					  </li>
					  <li class="card">
						<div class="img"><img src="src/images/img-6.jpg" alt="img" draggable="false"></div>
						<div class="info">
						  <h2>Donald Horton</h2>
						  <span>Web Developer</span>
						  <div class="review">
							<p>Lorem  amet, consectetur adipiscing elit. Seectetur adipiscing elit. Sed pulvinar faucibus mi, eu dignissim metus.aucibus mi, eu dignissim metusaucibus mi, eu dignissim metus</p>
							<span class="stars">&#9733;&#9733;&#9733;&#9733;&#9734;</span>
							<span class="date">April 1, 2024</span>
						  </div>
						</div>
					  </li>
					</ul>
					<i id="right" class="fa-solid fa-angle-right"></i>
				  </div>
			</div>
		</section>

	</section>

	<!-- Review -->







	<!-- Footer -->
	<footer>
		<div class="container">
			<p>&copy; 2024 Online Exam Management System. All rights
				reserved.</p>
		</div>
	</footer>

	<!-- Bootstrap JS -->
	<script>
		const wrapper = document.querySelector(".wrapper");
const carousel = document.querySelector(".carousel");
const firstCardWidth = carousel.querySelector(".card").offsetWidth;
const arrowBtns = document.querySelectorAll(".wrapper i");
const carouselChildrens = [...carousel.children];

let isDragging = false, isAutoPlay = true, startX, startScrollLeft, timeoutId;

// Get the number of cards that can fit in the carousel at once
let cardPerView = Math.round(carousel.offsetWidth / firstCardWidth);

// Insert copies of the last few cards to beginning of carousel for infinite scrolling
carouselChildrens.slice(-cardPerView).reverse().forEach(card => {
    carousel.insertAdjacentHTML("afterbegin", card.outerHTML);
});

// Insert copies of the first few cards to end of carousel for infinite scrolling
carouselChildrens.slice(0, cardPerView).forEach(card => {
    carousel.insertAdjacentHTML("beforeend", card.outerHTML);
});

// Scroll the carousel at appropriate postition to hide first few duplicate cards on Firefox
carousel.classList.add("no-transition");
carousel.scrollLeft = carousel.offsetWidth;
carousel.classList.remove("no-transition");

// Add event listeners for the arrow buttons to scroll the carousel left and right
arrowBtns.forEach(btn => {
    btn.addEventListener("click", () => {
        carousel.scrollLeft += btn.id == "left" ? -firstCardWidth : firstCardWidth;
    });
});

const dragStart = (e) => {
    isDragging = true;
    carousel.classList.add("dragging");
    // Records the initial cursor and scroll position of the carousel
    startX = e.pageX;
    startScrollLeft = carousel.scrollLeft;
}

const dragging = (e) => {
    if(!isDragging) return; // if isDragging is false return from here
    // Updates the scroll position of the carousel based on the cursor movement
    carousel.scrollLeft = startScrollLeft - (e.pageX - startX);
}

const dragStop = () => {
    isDragging = false;
    carousel.classList.remove("dragging");
}

const infiniteScroll = () => {
    // If the carousel is at the beginning, scroll to the end
    if(carousel.scrollLeft === 0) {
        carousel.classList.add("no-transition");
        carousel.scrollLeft = carousel.scrollWidth - (2 * carousel.offsetWidth);
        carousel.classList.remove("no-transition");
    }
    // If the carousel is at the end, scroll to the beginning
    else if(Math.ceil(carousel.scrollLeft) === carousel.scrollWidth - carousel.offsetWidth) {
        carousel.classList.add("no-transition");
        carousel.scrollLeft = carousel.offsetWidth;
        carousel.classList.remove("no-transition");
    }

    // Clear existing timeout & start autoplay if mouse is not hovering over carousel
    clearTimeout(timeoutId);
    if(!wrapper.matches(":hover")) autoPlay();
}

const autoPlay = () => {
    if(window.innerWidth < 800 || !isAutoPlay) return; // Return if window is smaller than 800 or isAutoPlay is false
    // Autoplay the carousel after every 2500 ms
    timeoutId = setTimeout(() => carousel.scrollLeft += firstCardWidth, 2500);
}
autoPlay();

carousel.addEventListener("mousedown", dragStart);
carousel.addEventListener("mousemove", dragging);
document.addEventListener("mouseup", dragStop);
carousel.addEventListener("scroll", infiniteScroll);
wrapper.addEventListener("mouseenter", () => clearTimeout(timeoutId));
wrapper.addEventListener("mouseleave", autoPlay);
	</script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
