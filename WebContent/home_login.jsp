<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib prefix="spr" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>

<html lang="en">
<head>
<title>User Login</title>
 
	<!-- Meta-Tags -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta charset="utf-8">
  <meta name="keywords" content="Space Register Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

	<!-- Main Content -->
<div class="main">
	<div class="main-w3l">
		<h1 class="logo-w3 text-dark font-weight-bold ">BackPackers</h1>
		<div class="w3layouts-main">
	<h2><span>Register now</span></h2>
		<spr:form action="login.htm" id="form" method="post" commandName="hostel">
			
			
			
			<spr:input type="text" name="emailId" placeholder="Email-Id" path="emailId" id="form_email" required="true"/><br>
			<span class="error_form text-light" id="email_error_message" ></span>
			<spr:input placeholder="Password" name="Password" type="password"  id="form_password" required="pls fill" path="password"/>
			<span class="error_form text-light" id="password_error_message"></span>			
			
					
					
			<input type="submit" value="Login"/><br><br>
			
			 <a href="user_register1.htm">Not Registered?Click here!!!</a>
					

				</spr:form>
		</div>
		<!-- //main -->
	
	
	
	

	
	<!-- password-script -->
	<script>
		window.onload = function () {
			document.getElementById("password1").onchange = validatePassword;
			document.getElementById("password2").onchange = validatePassword;
		}

		function validatePassword() {
			var pass2 = document.getElementById("password2").value;
			var pass1 = document.getElementById("password1").value;
			if (pass1 != pass2)
				document.getElementById("password2").setCustomValidity("Passwords Don't Match");
			else
				document.getElementById("password2").setCustomValidity('');
			//empty string means no validation error
		}
		
	</script>
	<!-- //password-script -->
	
	 <script type="text/javascript">
            $(function() {
    
            
                $("#email_error_message").hide();
                $("#password_error_message").hide();
				

    
                
                var error_email = false;
                var error_password = false;
				
    
                
                $("#form_email").focusout(function() {
                    check_email();
                });
                
                $("#form_password").focusout(function() {
                    check_password();
                });

				
      
    
                function check_email() {
                    var pattern = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
                    var email = $("#form_email").val()
                    if (pattern.test(email) && email !== '') {
                        $("#email_error_message").hide();
                        $("#form_email").css("border-bottom", "2px solid #34F458");
                    } else {
                        $("#email_error_message").html("Invalid email");
                        $("#email_error_message").show();
                        $("#form_email").css("border-bottom", "2px solid #F90A0A");
                        error_email = true;
                    }
                }
    
                
    
                function check_password() {
                    var password_length = $("#form_password").val().length;
                    if (password_length < 8) {
                        $("#password_error_message").html("Atleast 8 character");
                        $("#password_error_message").show();
                        $("#form_password").css("border-bottom",
                                "2px solid #F90A0A");
                        error_password = true;
                    } else {
                        $("#password_error_message").hide();
                        $("#form_password").css("border-bottom",
                                "2px solid #34F458");
                    }
                }

				
    
                
    
                
            });
        </script>
	
	
	

	<!--footer-->
	<div class="footer-w3l">
		<p>&copy; 2019 Hostel Accommodation. All rights reserved | Design by Back Packers</p>
	</div>
	<!--//footer-->
		
	</div>
</div>
<!-- //Main Content -->

</body>
</html>
