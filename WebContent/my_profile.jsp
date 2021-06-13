<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import="dao.UserDao" %>
 <%@ page import="dto.Hostel" %>
 <%@ page import="java.util.List" %>
 
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link rel="stylesheet" href="css/profile.css"> 
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}


</style>
</head>
<body>
  <%
 	Hostel hostel1=null;
	UserDao userDao = new UserDao();
 	if(userDao!=null)
 	{
 		Hostel hotel=((Hostel)session.getAttribute("hostel"));
 		
		hostel1 = userDao.getHostel(hotel);
 	}
	
%>

<div class="container-fluid">
<div class="row text-center bg-info rd-2 fontify" style="height: 50px" >
 My Profile
  ${hostel2 }

</div>
<form>
<div class="row mt-2">

<table class="table table-secondary " border="4" cellpadding="10">
   

  
  <tr>
    <td>Name</td>
    <td><%=hostel1.getStudentName() %></td>  
  </tr>
  
  <tr>
    <td>Phone Number</td>
    <td><%=hostel1.getContact() %></td>
   </tr>
   
   <tr>
    <td>Email Address</td>
    <td><%=hostel1.getEmailId() %></td>
   </tr>
  
  
  <tr>
    <td>Gender</td>
    <td><%=hostel1.getGender() %></td>
   </tr>
   
   <tr>
    <td>Blood Group</td>
    <td><%=hostel1.getBloodGroup() %></td>
   </tr>
   
   <tr>
    <td>Date Of Birth</td>
    <td><%=hostel1.getDateOfBirth() %></td>
   </tr>
   
   <tr>
    <td>Address</td>
    <td><%=hostel1.getAddress() %></td>
   </tr>
   
   <tr>
    <td>State</td>
    <td><%=hostel1.getState() %></td>
   </tr>
   
   <tr>
    <td>City</td>
    <td><%=hostel1.getCity() %></td>
   </tr> 
   
   <tr >
     <td colspan="2">
      <div class="container-fluid">
          <div class="row" style="height:70px;">
            <div class="col-4"></div>
            <div class="col-2"><button type="button" class="btn btn-dark">Update</button></div>
            <div class="col-2"><button type="button" class="btn btn-dark">Cancel</button></div>
          </div>
     </div>
   </td>
   </tr>
 
</table>





</div>


</form>

</div>
</body>
</html>