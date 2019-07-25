<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Paulas Porcupine Pogoda</title>
</head>
<body>

<jsp:include page="include/header.jsp" />

<div class="text-center">
	<br/>
	<h2><%= request.getParameter("workshopName") %></h2>
	<h3>Workshop Registration Successful!!!</h3>
	<br /><br />
	<h5>We saved the following information:</h5>
	<br />
	<h6>First Name: <%= request.getParameter("first_name") %></h6>
	<br />
	<h6>Last Name: <%= request.getParameter("last_name") %></h6>
	<br />
	<h6>Email: <%= request.getParameter("email") %></h6>
	<br />
</div>

<jsp:include page="include/footer.jsp" />

</body>
</html>