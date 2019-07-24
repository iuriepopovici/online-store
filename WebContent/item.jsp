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

<%@ page import="java.util.*" %>

<%
String product = "Cap";
String imgSrc = "img/merch/Cap.png";
String imgAlt = "Logo Cap";
Vector<String> availProds = new Vector<String>();
availProds.add("Cap");
availProds.add("Mug");
availProds.add("T-Shirt");

if(request.getParameter("product") != null){
	if (availProds.contains(request.getParameter("product"))) {
		product = request.getParameter("product");
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
    <form action="ProcessCart" method="post" id="adToCartForm">
		<input type="hidden" name="product" value=<%= product %> />
    </form>
     <button class="btn-orange" form="adToCartForm" type="submit" value="Add to cart">Add to cart</button>
    </div>
  </div>
</div>
<br />

<%@ include file="include/footer.jsp" %>

</body>
</html>