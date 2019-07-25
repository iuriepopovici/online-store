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

<h2><%= request.getParameter("workshopName") %></h2>
<h3>Workshop Registration Successful</h3>
<br />
We saved the following information:
<br />
First Name: <%= request.getParameter("first_name") %>
<br />
Last Name: <%= request.getParameter("last_name") %>
<br />
Email: <%= request.getParameter("email") %>
<br />

<jsp:include page="include/footer.jsp" />

</body>
</html>