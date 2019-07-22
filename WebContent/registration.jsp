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
      <h1>Registration</h1>
      <form class="registration" action="Register" method="post">
        <table>
          <tr>
            <td>First Name:</td>
            <td><input type="text" name="first_name" value=""></td>
          </tr>
          <tr>
            <td>Last Name:</td>
            <td><input type="text" name="last_name" value=""></td>
          </tr>
          <tr>
            <td>Phone Number:</td>
            <td><input type="text" name="phone" value=""></td>
          </tr>
          <tr>
            <td>Email:</td>
            <td><input type="text" name="email" value=""></td>
          </tr>
          <tr>
            <td>Password:</td>
            <td><input type="text" name="password" value=""></td>
          </tr>
        </table>
        <input type="submit" name="submit_registration" value="Submit">
      </form>
    </div>
  </div>
</div>

<br />
<%@ include file="include/footer.jsp" %>

</body>
</html>