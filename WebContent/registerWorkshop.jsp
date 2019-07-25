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
    <div class="col-md-4 offset-md-4 form-group required">
      <h5><%= request.getParameter("workshopName") %></h5>
      <h5>Free workshop sign up:</h5>
      <div class="control-label">required field</div>
      <br />
      <form class="registration-form" action="RegisterWorkshop" method="post">
        <table>
          <tr>
            <td><label class="control-label">First Name:</label></td>
            <td><input type="text" name="first_name" value=""></td>
          </tr>
          <tr>
            <td><label class="control-label">Last Name:</label></td>
            <td><input type="text" name="last_name" value=""></td>
          </tr>
          <tr>
            <td><label class="control-label">Email:</label></td>
            <td><input type="text" name="email" value="" required>
            <input type="hidden" name="workshopId" value="<%=request.getParameter("workshopId")%>">
            <input type="hidden" name="workshopName" value="<%=request.getParameter("workshopName")%>">
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