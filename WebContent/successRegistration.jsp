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

Welcome!!! Your registration was successful!!!
<br /><br />
We saved the following information:
<br />
First Name: ${first_name}
<br />
Last Name: ${last_name}
<br />
Phone Number: ${phone}
<br />
Email: ${email}
<br />
Password: *********

<jsp:include page="include/footer.jsp" />

</body>
</html>