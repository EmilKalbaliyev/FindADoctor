<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Find easily a doctor and book online an appointment">
	<meta name="author" content="Ansonika">
	<title>FINDOCTOR - Find easily a doctor and book online an appointment</title>

	<!-- Favicons-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="shortcut icon" href="" type="image/x-icon">
	<link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
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
	<link href="./css/icon_fonts/css/all_icons_min.css" rel="stylesheet">
   
    <!-- SPECIFIC CSS -->
    <link href="http://mardansafarov.com/doctor/css/date_picker.css" rel="stylesheet">
    
	<!-- YOUR CUSTOM CSS -->
	<link href="http://mardansafarov.com/doctor/css/custom.css" rel="stylesheet">

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
						<li><a href="login-2.html"><i class="fa fa-user"></i></a></li>
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
	<!-- /Header -->
	
	<main>
		<div id="results">
			<div class="container">
				<div class="row">
					<div class="col-md-6">
					</div>
					<div class="col-md-6">
						<div class="search_bar_list">
							<form method="post" action="doctors">
							<input type="text" name ="search" class="form-control" placeholder="Ex. Specialist, Name, Doctor..." id='search1' >
							<input type="submit" value="Search">
							</form>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /results -->

			<!-- /container -->
		</div> 
		<!-- /filters -->
		
		<div class="container margin_60_35">
			<div class="row">
				<div class="col-lg-7">
					<c:forEach var="doctor" items="${doctors}">
						<div class="strip_list wow fadeIn filterDiv psychologist szekeres kristóf">
							<figure>
								<a href="/doctors/${doctor.id}"><img src="${doctor.pic}" alt=""></a>
							</figure>
							<small>${doctor.spec}</small>
							<h3>${doctor.title} ${doctor.fullname}</h3>
							<p >${doctor.summary} </p>
							<span class="rating">
								<i class="fa fa-star" style="color: #f5c242"></i>
							<i class="fa fa-star" style="color: #f5c242"></i>
							<i class="fa fa-star" style="color: #f5c242"></i>
							<i class="fa fa-star" style="color: #f5c242"></i>
							<i class="fa fa-star"></i>
								<small>(1)</small></span>
							<ul>
								<li><a href="#0" onclick="onHtmlClick('Doctors', 0)" class="btn_listing">View on Map</a></li>
								<li><a href="https://www.google.com/maps/@47.4981524,19.0390707,14z" target="_blank">Directions</a></li>
							</ul>
						</div>

					</c:forEach>


					<!-- /strip_list -->
<%--					--%>
<%--					<nav aria-label="" class="add_top_20">--%>
<%--						<ul class="pagination pagination-sm">--%>
<%--							<li class="page-item disabled">--%>
<%--								<a class="page-link" href="#" tabindex="-1">Previous</a>--%>
<%--							</li>--%>
<%--							<li class="page-item active"><a class="page-link" href="#">1</a></li>--%>
<%--							<li class="page-item">--%>
<%--								<a class="page-link" href="#">Next</a>--%>
<%--							</li>--%>
<%--						</ul>--%>
<%--					</nav>--%>
					<!-- /pagination -->
				</div>
				<!-- /col -->
				
				<aside class="col-lg-5" id="sidebar">
					<div id="map_listing" class="normal_list">
					</div>
				</aside>
				<!-- /aside -->
				
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</main>
	<!-- /main -->

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
	<script src="http://maps.googleapis.com/maps/api/js"></script>
	<script src="http://mardansafarov.com/doctor/js/markerclusterer.js"></script>
    <script src="http://mardansafarov.com/doctor/js/map_listing.js"></script>
    <script src="http://mardansafarov.com/doctor/js/infobox.js"></script>



</body>
</html>