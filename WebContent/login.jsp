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

<jsp:include page="include/header.jsp" />

<%
String emailVal = "", message = "";
if (request.getAttribute("emptyEmail") != null) {
	message = "<div class='alert alert-danger'>Please enter an email to login!</div>";
}
if (request.getAttribute("failedLoginEmail") != null) {
	emailVal = (String)request.getAttribute("failedLoginEmail");
	message = "<div class='alert alert-danger'>Invalid credentials! Please try again!</div>";
}
%>

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-4 offset-md-4 form-group required">
      <h1>Login</h1>
      <%= message %>
      <div class="control-label">required field</div>
      <br />
      <form class="login-form" action="Login" method="post">
        <table>
          <tr>
            <td><label class="control-label">Email:</label></td>
            <td><input class="form-control mr-sm-2" type="email" name="login_email" value="<%= emailVal %>" required></td>
          </tr>
          <tr>
            <td><label class="control-label">Password:</label></td>
            <td><input class="form-control mr-sm-2" type="password" name="login_password" required></td>
          </tr>
        </table>
        <input class="btn btn-orange" type="submit" name="login_submit" value="Login">
      </form>
    </div>
  </div>
</div>

<br />
<%@ include file="include/footer.jsp" %>

</body>
</html>