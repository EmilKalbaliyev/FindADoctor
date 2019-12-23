
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
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
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
	<!-- /header -->	
	

	<main>

		<!-- /breadcrumb -->
		
		<div class="container margin_60">
			<div class="row">
				<aside class="col-xl-3 col-lg-4" id="sidebar">
					<div class="box_profile">
						<figure>
							<img src="${doctor.pic}" alt="" class="img-fluid">
						</figure>
						<small>${doctor.spec}</small>
						<h1>${doctor.fullname}</h1>
						<span class="rating">
							<i class="fa fa-star" style="color: #f5c242"></i>
							<i class="fa fa-star" style="color: #f5c242"></i>
							<i class="fa fa-star" style="color: #f5c242"></i>
							<i class="fa fa-star" style="color: #f5c242"></i>
							<i class="fa fa-star"></i>
							<small>(1)</small>
							<a href="badges.html" data-toggle="tooltip" data-placement="top" data-original-title="Badge Level" class="badge_list_1"><img src="http://mardansafarov.com/doctor/img/badges/badge_1.svg" width="15" height="15" alt=""></a>
						</span>
						<ul class="contacts">
							<li><h6>Address</h6>${doctor.address}</li>
							<li><h6>Phone</h6><a href="tel://${doctor.phone}">${doctor.phone}</a></li>
							<li><h6>Email</h6><a href="mailto://${doctor.email}">${doctor.email}</a></li>
						</ul>
						<div class="text-center"><a href="https://www.google.com/maps/dir//Assistance+%E2%80%93+H%C3%B4pitaux+De+Paris,+3+Avenue+Victoria,+75004+Paris,+Francia/@48.8606548,2.3348734,14z/data=!4m15!1m6!3m5!1s0x0:0xa6a9af76b1e2d899!2sAssistance+%E2%80%93+H%C3%B4pitaux+De+Paris!8m2!3d48.8568376!4d2.3504305!4m7!1m0!1m5!1m1!1s0x47e67031f8c20147:0xa6a9af76b1e2d899!2m2!1d2.3504327!2d48.8568361" class="btn_1 outline" target="_blank"><i class="fa fa-map"></i> View on map</a></div>
					</div>
				</aside>
				<!-- /asdide -->

				
				<div class="col-xl-9 col-lg-8">

					<!-- /box_general -->
					
					<div class="tabs_styled_2">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" id="general-tab" data-toggle="tab" href="#general" role="tab" aria-controls="general" aria-expanded="true">About</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews">Reviews</a>
							</li>
						</ul>
						<!--/nav-tabs -->

						<div class="tab-content">
							<div class="tab-pane fade show active" id="general" role="tabpanel" aria-labelledby="general-tab">
								
								
								<div class="indent_title_in">
									<i class="fa fa-info-circle"></i>
									<h3>Professional info</h3>
								</div>
								<div class="wrapper_indent">
									<p>${doctor.information}</p>

									<!-- /row-->
								</div>

								<!--  End wrapper indent -->
								
								<hr>

								<div class="indent_title_in">
									<i class="fa fa-tag"></i>
									<h3>Treatment Prices</h3>								</div>
								<div class="wrapper_indent">
									<div class="table-responsive">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Service - Visit</th>
												<th>Price</th>
											</tr>
										</thead>
										${doctor.price}
									</table>
									</div>
								</div>
								<!--  End wrapper_indent -->

							</div>
							<!-- /tab_2 -->

							<div class="tab-pane fade" id="reviews" role="tabpanel" aria-labelledby="reviews-tab">
								<div class="reviews-container">
									<div class="row">

										
									<div class="review-box clearfix">
										<figure class="rev-thumb"><img src="http://via.placeholder.com/150x150.jpg" alt="">
										</figure>
										<div class="rev-content">
											<div class="rating">
												<i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star voted"></i><i class="icon_star"></i>
											</div>
											<div class="rev-info">
												Review1 – April 03, 2016:
											</div>
											<div class="rev-text">
												<p>
													Dummy review.
												</p>
											</div>
										</div>
									</div>
									<!-- End review-box -->

									<div class="review-box clearfix">
										

									</div>
									<!-- End review-box -->

									<div class="review-box clearfix">

									</div>
									<!-- End review-box -->
								</div>
								<!-- End review-container -->
								<hr>
								<div class="text-right"><a href="submitreview" class="btn_1 add_bottom_15">Submit review</a></div>
							</div>
							<!-- /tab_3 -->
						</div>
						<!-- /tab-content -->
					</div>
					<!-- /tabs_styled -->
				</div>
				<!-- /col -->
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
    <script src="http://mardansafarov.com/doctor/js/bootstrap-datepicker.js"></script>
    <script>
			$('#calendar').datepicker({
			    todayHighlight: true,
				daysOfWeekDisabled: [0],
				weekStart: 1,
			    format: "yyyy-mm-dd",
    			datesDisabled: ["2017/10/20", "2017/11/21","2017/12/21", "2018/01/21","2018/02/21","2018/03/21"],
			});
	</script>
     

</body>
</html>