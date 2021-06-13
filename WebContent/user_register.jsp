<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
 
<!DOCTYPE html>

<html lang="en">
<head>
<title>User Registration</title>
 
	<!-- Meta-Tags -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <meta name="keywords" content="Space Register spr:form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
  <script>
      addEventListener("load", function () {
          setTimeout(hideURLbar, 0);
      }, false);

      function hideURLbar() {
          window.scrollTo(0, 1);
      }
  </script>
  <!-- //Meta-Tags -->

<!-- css files -->

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- css files -->

<!-- Online-fonts -->
<link href="//fonts.googleapis.com/css?family=Montserrat:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=latin-ext,vietnamese" rel="stylesheet">
<!-- //Online-fonts -->

</head>
<body>

	<!-- Main Content -->
<div class="main">
	<div class="main-w3l">
		<h1 class="logo-w3">BackPackers</h1>
		<div class="w3layouts-main">
	<h2><span>Register now</span></h2>
	
		<spr:form action="reg1.htm" method="post" commandName="hostel">
			
			<spr:input placeholder="Full Name" name="Name" path="studentName" type="text" required=""/>
			<spr:input placeholder="Email" name="Email" path="emailId" type="email" required=""/>
			<spr:input placeholder="Phone Number" name="phone" path="contact" type="text" required=""/>
			<spr:input placeholder="Password" name="Password" path="password" type="password"  id="password" required=""/>
			<input placeholder="Confirm Password" name="confirm_Password" type="password"  id="confirm_password" required=""/>
			
					
					Gender:<spr:select path="gender">
		<br><br>
		 <spr:option value="Select Gender">Select Gender</spr:option> 
		<spr:option value="male">Male</spr:option>
		<spr:option value="female">Female</spr:option>
		</spr:select><br><br>
			

			  
		 
		
	<div class="well"> 
	      <div class="form-group">
	      <label>Date of Birth</label>
	      <spr:input type="date" class="form-control" id="exampleInputDOB1" path="dateOfBirth" placeholder="Date of Birth"/>
	   	</div>
	</div>


					
			
	<spr:select path="bloodGroup">
			<spr:option value="Unknown"></spr:option>
			 <spr:option value="A Positive"></spr:option>
			 <spr:option value="A Negative"></spr:option>
			 <spr:option value="A Unknown"></spr:option>
			 <spr:option value="B Positive"></spr:option>
			 <spr:option value="B Negative"></spr:option>
			 <spr:option value="B Unknown"></spr:option>
			 <spr:option value="AB Positive"></spr:option>
			 <spr:option value="AB Negative"></spr:option>
			  <spr:option value="AB Unknown"></spr:option>
			  <spr:option value="O Positive"></spr:option>
			  <spr:option value="O Negative"></spr:option>
			   <spr:option value="O Unknown"></spr:option>
			  
			</spr:select><br><br>
			 
			 <textarea rows="4" cols="30" name="address" placeholder="Address"></textarea><br><br>
	        <spr:select path="state">
                <spr:option value="Select State"></spr:option>
			<spr:option value="Andaman and Nicobar Islands"></spr:option>
			<spr:option value="Andhra Pradesh"></spr:option>
			<spr:option value="Arunachal Pradesh"></spr:option>
			<spr:option value="Assam"></spr:option>
			<spr:option value="Bihar"></spr:option>
			<spr:option value="Chandigarh"></spr:option>
			<spr:option value="Chhattisgarh"></spr:option>
			<spr:option value="Dadra and Nagar Haveli"></spr:option>
			<spr:option value="Daman and Diu"></spr:option>
			<spr:option value="Delhi"></spr:option>
			<spr:option value="Goa"></spr:option>
			<spr:option value="Gujarat"></spr:option>
			<spr:option value="Haryana"></spr:option>
			<spr:option value="Himachal Pradesh"></spr:option>
			<spr:option value="Jammu and Kashmir"></spr:option>
			<spr:option value="Jharkhand"></spr:option>
			<spr:option value="Karnataka"></spr:option>
			<spr:option value="Kerala"></spr:option>
			<spr:option value="Lakshadweep"></spr:option>
			<spr:option value="Madhya Pradesh"></spr:option>
			<spr:option value="Maharashtra"></spr:option>
			<spr:option value="Manipur"></spr:option>
			<spr:option value="Meghalaya"></spr:option>
			<spr:option value="Mizoram"></spr:option>
			<spr:option value="Nagaland"></spr:option>
			<spr:option value="Orissa"></spr:option>
			<spr:option value="Pondicherry"></spr:option>
			<spr:option value="Punjab"></spr:option>
			<spr:option value="Rajasthan"></spr:option>
			<spr:option value="Sikkim"></spr:option>
			<spr:option value="Tamil Nadu"></spr:option>
			<spr:option value="Tripura"></spr:option>
			<spr:option value="Uttaranchal"></spr:option>
			<spr:option value="Uttar Pradesh"></spr:option>
			<spr:option value="West Bengal"></spr:option>
			</spr:select>
			<br>
			<br>
			
			 <spr:select path="city" >
			<spr:option value="Thane"></spr:option>
			<spr:option value="Dombivli"></spr:option>
			</spr:select><br><br>
			<input type="submit" value="Register" />
					
				
				</spr:form>
		</div>
		<!-- //main -->
	
	
	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password").onchange = validatePassword;
			document.getElementById("confirm_password").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("confirm_password").value;
			var pass1 = document.getElementById("password").value;
			if (pass1 != pass2)
				document.getElementById("confirm_password").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("confirm_password").setCustomValidity('');
			//empty string means no validation error
		}
	</script>
	<!-- //password-script -->

	<!--footer-->
	<div class="footer-w3l">
		<p>&copy; 2019 Student Register form. All rights reserved | Design by Back Packers</p>
	</div>
	<!--//footer-->
		
	</div>
</div>
<!-- //Main Content -->

</body>
</html>
