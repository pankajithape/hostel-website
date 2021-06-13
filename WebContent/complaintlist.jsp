<%@page import="dto.Complaint"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<head>

	<title>Admin Page</title>
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
	
	<table class="table table-primary">
  <thead>
    <tr>
      
      <th scope="col">complaintNumber</th>
      <th scope="col">complaint</th>
      <th scope="col">Contact</th>
      <th scope="col">emailId</th>
      <th scope="col">Student Name</th>
      <th scope="col">Status</th>
      </tr>
  </thead>
	</table>
			
<% 
List<Complaint> list = (List<Complaint>)request.getAttribute("clist");

for(Complaint u:list){
	if(u!=null){


%>
			
<table class="table table-primary">
  
  <tbody>
    <tr>
      
      
      <td><%=u.getComplaintNo() %></td>
      <td><%=u.getComplaints() %></td>

      <td><%=u.getContact() %></td>
      <td><%=u.getEmailId() %></td>
      <td><%=u.getStudentName() %></td>
      
     
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






