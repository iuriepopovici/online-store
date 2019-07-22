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

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-4 offset-md-4  text-center">
      <h1>Login</h1>
      <form class="login-form" action="Login" method="post">
        <table>
          <tr>
            <td><label>Email:</label></td>
            <td><input class="form-control mr-sm-2" type="email" name="login_email"></td>
          </tr>
          <tr>
            <td><label>Password:</label></td>
            <td><input class="form-control mr-sm-2" type="password" name="login_password"></td>
          </tr>
        </table>
        <input class="btn btn-blue" type="submit" name="login_submit" value="Login">
        <br /><br />
        <input class="btn btn-orange" type="submit" name="login_submit" value="Register">
      </form>
    </div>
  </div>
</div>

<br />
<%@ include file="include/footer.jsp" %>

</body>
</html>