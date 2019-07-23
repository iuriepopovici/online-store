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
<link rel="stylesheet" type="text/css" href="css/main.css"/>
</head>
<body>
<jsp:include page="include/header.jsp" />
<% if(session.getAttribute("email") != null) { %>
	<h3>You are logged in as ${email}. 
	<br />
	We are sorry to see you leave.</h3>
	<br /><br />
	<h3>Are you sure you want to logout?</h3>

<form action="Logout">
	<input type="submit" value="Logout">
</form>
<% } %>

<jsp:include page="include/footer.jsp" />
</body>
</html>