<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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

<%@ page import="java.util.Arrays" %>

<%
String product = "Cap";
String imgSrc = "img/merch/Cap.png";
String imgAlt = "Logo Cap";
String[] availProds = {"Cap", "Mug", "T-Shirt"};

if(request.getParameter("value") != null){
	if (Arrays.asList(availProds).contains(request.getParameter("value"))) {
		product = request.getParameter("value");
		imgSrc = "img/merch/" + product + ".png";
		imgAlt = "Logo " + product;
	}
	else {
		response.sendRedirect("store.jsp");
	} 
} 
else {
	response.sendRedirect("store.jsp");
}
%>
<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-4  text-center">
      <h1><%= product %></h1>
      <img class="store_photo" src=<%= imgSrc %> alt=<%= imgAlt %>>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4  text-center">
      <button class="btn-orange" type="submit">Add to cart</button>
    </div>
  </div>
</div>

<br />

<%@ include file="include/footer.jsp" %>

</body>
</html>