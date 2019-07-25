<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Paulas Porcupine Pogoda</title>
</head>
<body>

<%
	if(session.getAttribute("email") == null) {
		response.sendRedirect("registration.jsp");
	}
%>

<jsp:include page="include/header.jsp" />
<div class="text-center">
	<br />
	<h2>Welcome!!!</h2>
	<h3>Your registration was successful!!!</h3>
	<br />
	<h5>We saved the following information:</h5>
	<br />
	<h6>First Name: ${first_name}</h6>
	<h6>Last Name: ${last_name}</h6>
	<h6>Phone Number: ${phone}</h6>
	<h6>Email: ${email}</h6>
	<h6>Password: *********</h6>
	<br /><br />
</div>


<jsp:include page="include/footer.jsp" />

</body>
</html>