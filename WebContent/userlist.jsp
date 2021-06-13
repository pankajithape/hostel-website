<%@page import="dto.Hostel"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
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
					
					<li><a href="contact.jsp">Logout</a></li>
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
	
	
	
			
<% 
List<Hostel> list = (List<Hostel>)request.getAttribute("ulist");

for(Hostel u:list){
	if(u!=null){


%>
			
<table class="table table-primary">
  <thead>
    <tr>
      
      <th scope="col">Student Name</th>
      <th scope="col">Email-Id</th>
      <th scope="col">Contact</th>
      <th scope="col">Gender</th>
      <th scope="col">Date Of Birth</th>
      <th scope="col">Blood Group</th>
      
      <th scope="col">Address</th>
      <th scope="col">State</th>
      <th scope="col">City</th>
      <th scope="col">Status</th>
      
    </tr>
  </thead>
  <tbody>
    <tr>
      
      
      <td><%=u.getStudentName() %></td>
      <td><%=u.getEmailId() %></td>

      <td><%=u.getContact() %></td>
      <td><%=u.getGender() %></td>
      <td><%=u.getDateOfBirth() %></td>
      
      <td><%=u.getBloodGroup() %></td>
      <td><%=u.getAddress() %></td>
      <td><%=u.getState() %></td>
      
      <td><%=u.getCity() %></td>
      <td>In Process</td>
     
    </tr>

  </tbody>
</table>
				
				
<%}
	} %>
			</div>
			
		</div>
		<!-- copyright -->
	
		<!-- //copyright -->
	</div>
	<!-- //banner -->

</body>
</html>






