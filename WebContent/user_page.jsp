<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%-- <jsp:useBean id="hostel"  class="dto.Hostel" />
 --%>
<%@ page import="dto.Hostel" %>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>User Page</title>
	<!-- Meta tag Keywords -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8" />
	<meta name="keywords" content="Unique Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!--// Meta tag Keywords -->

	<!-- Custom-Files -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<!-- Bootstrap-Core-CSS -->
	<link rel="stylesheet" href="css/style1.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //Custom-Files -->

	<!-- Web-Fonts -->
	<link href="//fonts.googleapis.com/css?family=Source+Code+Pro:200,300,400,500,600,700,900&amp;subset=latin-ext" rel="stylesheet">
	<!-- //Web-Fonts -->
</head>

<body>
	<!-- header -->
	<header>
		<!-- menu -->
		<ul id="menu">
			<li>
				<input id="check02" type="checkbox" name="menu" />
				<label for="check02"><span class="fa fa-bars" aria-hidden="true"></span></label>
				<ul class="submenu">
					<li><a href="welcome.jsp" class="active">Home</a></li>
					
					<li><a href="logout.htm">Logout</a></li>
				</ul>
			</li>
		</ul>
		<!-- //menu -->
	</header>
	<!-- //header -->

	<!-- banner -->
	<div class="banner_w3lspvt he-codes">
		<div class="container-fluid">
			<div class="banner-text pl-lg-5 pl-sm-4 ml-lg-3" >
				<%Hostel hostel = (Hostel)session.getAttribute("hostel"); %>
				<h1 class="my-md-4 my-3" >Welcome User!!!</h1>
				
				<a href="error.htm" class="btn button-style mt-5">Check Status </a><br>
				<a href="complaint_form.htm" class="btn button-style mt-5">Register Complaints</a><br>
				
				<a href="error.htm" class="btn button-style mt-5">Hostel Room Details</a><br>
				<a href="about.html" class="btn button-style mt-5">Submit Feedback</a><br>
				<a href="my_profile.htm" class="btn button-style mt-5">My Profile</a><br>
			</div>
			
		</div>
		<!-- copyright -->
		<div class="wthree_copy_right text-right ml-auto mr-sm-5 mr-4">
			<p class="text-light">2019 Hostel Accommodation. All rights reserved | Design by Back Packers
			</p>
		</div>
		<!-- //copyright -->
	</div>
	<!-- //banner -->

</body>

</html>