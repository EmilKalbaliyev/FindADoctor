<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>FIND A DOCTOR </title>

	<!-- Favicons-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="shortcut icon" href="" type="image/x-icon">
	<link rel="apple-touch-icon" type="image/x-icon" href="http://mardansafarov.com/doctor/img/apple-touch-icon-57x57-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="http://mardansafarov.com/doctor/img/apple-touch-icon-72x72-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="http://mardansafarov.com/doctor/img/apple-touch-icon-114x114-precomposed.png">
	<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="http://mardansafarov.com/doctor/img/apple-touch-icon-144x144-precomposed.png">
    
    <!-- GOOGLE WEB FONT -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800" rel="stylesheet">
    
	<!-- BASE CSS -->
	<link href="http://mardansafarov.com/doctor/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://mardansafarov.com/doctor/css/style.css" rel="stylesheet">
	<link href="http://mardansafarov.com/doctor/css/menu.css" rel="stylesheet">
	<link href="http://mardansafarov.com/doctor/css/vendors.css" rel="stylesheet">
	<link href="http://mardansafarov.com/doctor/css/icon_fonts/css/all_icons_min.css" rel="stylesheet">

	<!-- YOUR CUSTOM CSS -->
	<link href="http://mardansafarov.com/doctor/css/custom.css" rel="stylesheet">
	
	<!-- Modernizr -->
	<script src="http://mardansafarov.com/doctor/js/modernizr.js"></script>

</head>

<body>

	<div class="layer"></div>
	<!-- Mobile menu overlay mask -->

	<div id="preloader">
		<div data-loader="circle-side"></div>
	</div>
	<!-- End Preload -->

    <header class="header_sticky">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-6">
					<div id="logo_home">
						<h1>FindADoctor</h1>
					</div>
				</div>
				<nav class="col-lg-9 col-6">
					<a class="cmn-toggle-switch cmn-toggle-switch__htx open_close" href="#0"><span>Menu mobile</span></a>
					<ul id="top_access">
						<li><a href="login"><i class="fa fa-user"></i></a></li>
					</ul>
					<div class="main-menu">
						<ul>
							<li class="submenu">
								<a href="/" class="show-submenu">Home</a>
							</li>
							<li class="submenu">
								<a href="doctors" class="show-submenu">Doctors</a>
<!-- 								<ul>
									<li><a href="submit-review.html">DoctorSpec1</a></li>
									<li><a href="blog-1.html">DoctorSpec1</a></li>
									<li><a href="badges.html">DoctorSpec1</a></li>
									<li><a href="login.html">DoctorSpec1</a></li>
									<li><a href="login-2.html">DoctorSpec1</a></li>
									<li><a href="register-doctor.html">DoctorSpec1</a></li>
									<li><a href="register-doctor-working.html">DoctorSpec1</a></li>
									<li><a href="register.html">DoctorSpec1</a></li>
									<li><a href="about.html">DoctorSpec1</a></li>
									<li><a href="contacts.html">DoctorSpec1</a></li>
								</ul>
							</li> -->
<!-- 							<li class="submenu">
								<a href="#0" class="show-submenu">Districts<i class="icon-down-open-mini"></i></a>
								<ul>
                                    <li><a href=#>I</a></li>
                                    <li><a href=#>II</a></li>
                                	<li><a href=#>III</a></li>
                                    <li><a href=#>IV</a></li>
									<li><a href=#>V</a></li>
									<li><a href=#>VI</a></li>
									<li><a href=#>VII</a></li>
									<!-- <li><a href="404.html">VIII</a></li> -->
								</ul>
							</li> 
						</ul>
					</div>
					<!-- /main-menu -->
				</nav>
			</div>
		</div>
		<!-- /container -->
	</header>
	<!-- /header -->	
	
	<main>
	<div class="hero_home version_1">
				<div class="content">
					<h3>Find a Doctor!</h3>
					<p>
						Finding best doctor is easy now. 
					</p>
					<form method="post" action="doctors">
						<div id="custom-search-input">
							<div class="input-group">
								<input type="text" name="search" class=" search-query" placeholder="Ex.Specialization, illness..">
								<input type="submit" class="btn_search" value="Search">
							</div>
							<ul>
<!-- 								<li>
									<input type="radio" id="all" name="radio_search" value="all" checked>
									<label for="all">All</label>
								</li>
								<li>
									<input type="radio" id="doctor" name="radio_search" value="doctor">
									<label for="doctor">Doctor</label>
								</li>
								<li>
									<input type="radio" id="clinic" name="radio_search" value="clinic">
									<label for="clinic">District</label>
								</li> -->
							</ul>
						</div>
					</form>
				</div>
			</div>
		<!-- /Header video -->
		
		<div class="container margin_120_95">
			<div class="main_title">
				<h2>Find by specialization</h2>
				<p>Find a best doctor by doctor specialization</p>
			</div>
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<a href="doctor?search=Dentistry" class="box_cat_home">
						<img src="http://mardansafarov.com/doctor/img/icon_cat_5.svg" width="60" height="60" alt="">
						<h3>Dentistry</h3>
						<ul class="clearfix">
							<!-- <li><strong>30</strong>Doctors</li> -->
						</ul>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="doctor?search=x-ray" class="box_cat_home">
						<img src="http://mardansafarov.com/doctor/img/icon_cat_6.svg" width="60" height="60" alt="">
						<h3>X - Ray</h3>
						<ul class="clearfix">
							<!-- <li><strong>30</strong>Doctors</li> -->
						</ul>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="doctor?search=MRI" class="box_cat_home">
						<img src="http://mardansafarov.com/doctor/img/icon_cat_3.svg" width="60" height="60" alt="">
						<h3>MRI Resonance</h3>
						<ul class="clearfix">
							<!-- <li><strong>30</strong>Doctors</li> -->
						</ul>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="doctor?search=Cardiology" class="box_cat_home">
						<img src="http://mardansafarov.com/doctor/img/icon_cat_2.svg" width="60" height="60" alt="">
						<h3>Cardiology</h3>
						<ul class="clearfix">
							<!-- <li><strong>30</strong>Doctors</li> -->
						</ul>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="doctor?search=Blood tests" class="box_cat_home">
						<img src="http://mardansafarov.com/doctor/img/icon_cat_4.svg" width="60" height="60" alt="">
						<h3>Blood test</h3>
						<ul class="clearfix">
							<!-- <li><strong>30</strong>Doctors</li> -->
						</ul>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="doctor?search=Primary care" class="box_cat_home">
						<img src="http://mardansafarov.com/doctor/img/icon_cat_1.svg" width="60" height="60" alt="">
						<h3>Primary Care</h3>
						<ul class="clearfix">
							<!-- <li><strong>30</strong>Doctors</li> -->
						</ul>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="doctor?search=Laboratory" class="box_cat_home">
						<img src="http://mardansafarov.com/doctor/img/icon_cat_7.svg" width="60" height="60" alt="">
						<h3>Laboratory</h3>
						<ul class="clearfix">
							<!-- <li><strong>30</strong>Doctors</li> -->
						</ul>
					</a>
				</div>
				<div class="col-lg-3 col-md-6">
					<a href="doctor?search=Psychology" class="box_cat_home">
						<img src="http://mardansafarov.com/doctor/img/icon_cat_8.svg" width="60" height="60" alt="">
						<h3>Psycologist</h3>
						<ul class="clearfix">
							<!-- <li><strong>30</strong>Doctors</li> -->
						</ul>
					</a>
				</div>
			</div>
			<!-- /row -->
		</div>
	
			</div>
			<!-- /container -->
		</div>
		<!-- /white_bg -->		

		<div class="container margin_120_95">
			<div class="main_title">
				<h2>How It Works</h2>
			</div>
			<div class="row add_bottom_30">
				<div class="col-lg-4">
					<div class="box_feat" id="icon_1">
						<span></span>
						<h3>Find a Doctor</h3>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="box_feat" id="icon_2">
						<span></span>
						<h3>View profile</h3>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="box_feat" id="icon_3">
						<h3>Book a visit</h3>
					</div>
				</div>
			</div>
			<!-- /row -->
			<p class="text-center"><a href="list.html" class="btn_1 medium">Find Doctor</a></p>
		</div>


				<!-- <div class="container margin_120_95">
			<div class="main_title">
				<h2>Search doctors easily</h2>
				<p>Nec graeci sadipscing disputationi ne, mea ea nonumes percipitur. Nonumy ponderum oporteat cu mel, pro movet cetero at.</p>
			</div>
			<div class="row justify-content-center">
				<div class="col-xl-4 col-lg-5 col-md-6">
					<div class="list_home">
						<div class="list_title">
							<i class="icon_pin_alt"></i>
							<h3>Search by District</h3>
						</div>
						<ul>
							<li><a href="#0"><strong>23</strong>Clinic 1</a></li>
							<li><a href="#0"><strong>23</strong>Clinic 2</a></li>
							<li><a href="#0"><strong>23</strong>Clinic 3</a></li>
							<li><a href="#0"><strong>23</strong>Clinic 4</a></li>
							<li><a href="#0"><strong>23</strong>Clinic 5</a></li>
							<li><a href="#0"><strong>23</strong>Clinic 6</a></li>
							<li><a href="#0"><strong>23</strong>Clinic 7</a></li>
							<li><a href="#0"><strong>23</strong>Clinic 8</a></li>
							<li><a href="#0"><strong>23</strong>Clinic 9</a></li>
							<li><a href="#0">More...</a></li>
						</ul>
					</div>
				</div>
				<div class="col-xl-4 col-lg-5 col-md-6">
					<div class="list_home">
						<div class="list_title">
							<i class="icon_archive_alt"></i>
							<h3>Search by illness</h3>
						</div>
						<ul>
							<li><a href="#0"><strong>23</strong>Allergist</a></li>
							<li><a href="#0"><strong>23</strong>Cardiologist</a></li>
							<li><a href="#0"><strong>23</strong>Chiropractor</a></li>
							<li><a href="#0"><strong>23</strong>Dentist</a></li>
							<li><a href="#0"><strong>23</strong>Dermatologist</a></li>
							<li><a href="#0"><strong>23</strong>Gastroenterologist</a></li>
							<li><a href="#0"><strong>23</strong>Ophthalmologist</a></li>
							<li><a href="#0"><strong>23</strong>Optometrist</a></li>
							<li><a href="#0"><strong>23</strong>Pediatrician</a></li>
							<li><a href="#0">More....</a></li>
						</ul>
					</div>
				</div>
			</div>
 -->

		<!-- /container -->
<br>
<br>
				<div class="cta_subscribe">
			<div class="container-fluid h-100">
				<div class="row h-100 justify-content-center align-items-center">
					<div class="col-md-6 p-0">
						<div class="block_1">
							<figure><img src="http://mardansafarov.com/doctor/img/doctors_icon.svg" alt=""></figure>
							<h3>Are you a Doctor?</h3>
							<p>The service allows you to get maximum visibility online and to manage appointments and contacts coming from the site, in a simple and fast way.</p>
							<a href="registerd" class="btn_1">Read more</a>
						</div>
					</div>
					<div class="col-md-6 p-0">
						<div class="block_2">
							<figure><img src="http://mardansafarov.com/doctor/img/patient_icon.svg" alt=""></figure>
							<h3>Are you a patient?</h3>
							<p>Choosing a specialist has never been so fast! You can filter search results by location and medical specialization, and book medical examination online.</p>
							<a href="register" class="btn_1">Read more</a>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
	</main>
	<!-- /main content -->
	
	<footer>
		<div class="container margin_60_35">
			<div class="row">
				<div class="col-lg-3 col-md-12">
					<p>
							<h1>FindADoctor</h1>
						</a>
					</p>
				</div>
				<div class="col-lg-3 col-md-4">
					<h5>About</h5>
					<ul class="links">
						<li><a href="/doctor"> Doctors </a></li>
						<li><a href="login.html">Login</a></li>
						<li><a href="register.html">Register</a></li>
						<li><a href="register-doctor-working.html.html">Join as Doctor</a></li>

					</ul>
				</div>
				<div class="col-lg-3 col-md-4">
					<h5>Specializations</h5>
					<ul class="links">
						<li> <a href="doctor?search=Cardiology" >Cardiology</a></li>
						<li><a  href="doctor?search=Dentistry" >Dentistry</></li>
						<li><a  href="doctor?search=Primary care" >Primary Care</></li>
						<li><a  href="doctor?search=MRI" >MRI</></li>
					</ul>
				</div>
				<div class="col-lg-3 col-md-4">
					<h5>Contact with Us</h5>
					<ul class="contacts">
						<li><a href="tel://61280932400"><i class="fa fa-phone"></i> + 36 00 000 0000</a></li>
						<li><a href="mailto:help@xyz.com"><i class="fa fa-envelope"></i> help@xyz.com</a></li>
					</ul>
					<div class="follow_us">
						<h5>Follow us</h5>
						<ul>
							<li><a href="#0"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#0"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#0"><i class="fa fa-linkedin"></i></a></li>
							<li><a href="#0"><i class="fa fa-instagram"></i></a></li>
						</ul>
					</div>
				</div>
			</div>

			<!--/row-->
<!-- 			<hr>

			<div class="row">
				<div class="col-md-8">
					<ul id="additional_links">
						<li><a href="#0">Terms and conditions</a></li>
						<li><a href="#0">Privacy</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<div id="copy">© 2019 FindADoctor</div>
				</div>
			</div>
		</div> -->
	</footer>
	<!--/footer-->

	<!-- Back to top button -->

	<!-- COMMON SCRIPTS -->
	<script src="http://mardansafarov.com/doctor/js/jquery-2.2.4.min.js"></script>
	<script src="http://mardansafarov.com/doctor/js/common_scripts.min.js"></script>
	<script src="http://mardansafarov.com/doctor/js/functions.js"></script>

	<!-- SPECIFIC SCRIPTS -->
	<script src="http://mardansafarov.com/doctor/js/video_header.js"></script>
	<script>
		'use strict';
		HeaderVideo.init({
			container: $('.header-video'),
			header: $('.header-video--media'),
			videoTrigger: $("#video-trigger"),
			autoPlayVideo: true
		});
	</script>

</body>

</html>