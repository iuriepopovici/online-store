<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Paula's Porcupine Pagoda</title>
<link rel="stylesheet"
  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
  crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/main.css"/></head>
<body>

<%
String message = "";
String first_name = "";
String last_name = "";
String phone = "";
String email = "";
String password = "";

if (request.getAttribute("emptyEmail") != null) {
	message = "<div class='alert alert-danger'>Please enter a valid email address to register!</div>";
} 
else if (request.getAttribute("emptyPass") != null) {
	message = "<div class='alert alert-danger'>Please enter a password to register (no spaces)!</div>";
	if (request.getParameter("email") != null) {
		email = request.getParameter("email");
	}
} 
else if (request.getAttribute("emailInDb") != null) {
	message = "<div class='alert alert-danger'>This email address is associated with an existing account! <br />Please use a different email address!</div>";
}


if (request.getParameter("first_name")!= null) {
	first_name = request.getParameter("first_name");
}
if (request.getParameter("last_name")!= null) {
	last_name = request.getParameter("last_name");
}
if (request.getParameter("phone")!= null) {
	phone = request.getParameter("phone");
}
%>

<jsp:include page="include/header.jsp" />

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-4 offset-md-4 form-group required">
      <h1>Registration</h1>
      <%= message %>
      <div class="control-label">required field</div>
      <br />
      <form class="registration-form" action="Register" method="post">
        <table>
          <tr>
            <td><label>First Name:</label></td>
            <td><input type="text" name="first_name" value="<%= first_name %>"></td>
          </tr>
          <tr>
            <td><label>Last Name:</label></td>
            <td><input type="text" name="last_name" value="<%= last_name %>"></td>
          </tr>
          <tr>
            <td><label>Phone Number:</label></td>
            <td><input type="tel" name="phone" value="<%= phone %>"></td>
          </tr>
          <tr>
            <td><label class="control-label">Email:</label></td>
            <td><input type="email" name="email" value="<%= email %>" required></td>
          </tr>
          <tr>
            <td><label class="control-label">Password:</label></td>
            <td><input type="password" name="password" value="" required></td>
          </tr>
        </table>
        <input class="btn btn-orange" type="submit" name="submit_registration" value="Submit">
      </form>
    </div>
  </div>
</div>

<br />
<%@ include file="include/footer.jsp" %>

</body>
</html>