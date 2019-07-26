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
String price = "$15";
Vector<String> availProds = new Vector<String>();
availProds.add("Cap");
availProds.add("Mug");
availProds.add("T-Shirt");

if(request.getParameter("product") != null && request.getParameter("price") != null){
	if (availProds.contains(request.getParameter("product"))) {
		product = request.getParameter("product");
		price = request.getParameter("price");
		imgSrc = "img/merch/" + product + ".png";
		imgAlt = "Logo " + product;
	}
	else {
		//response.sendRedirect("store.jsp");
	} 
} 
else {
	//response.sendRedirect("store.jsp");
}
%>

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-12  text-center">
      <h1>${blueItem.itemName}</h1>
      <img class="store_photo" src="${blueItem.imgMd}" alt="${blueItem.itemName}">
    </div>
  </div>
  <div class="row">
    <div class="col-md-12  text-center">
    <p>${blueItem.itemPrice}</p>
    
    <form action="ProcessCart" method="post" id="addToCartForm">
		<input type="hidden" name="product" value="${blueItem.itemId}"/>
    </form>
    <form action="Checkout" method="post" id="buyForm">
		<input type="hidden" name="product" value="${blueItem.itemId}" />
    </form>
<!--  
<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-12  text-center">
      <h1><%= product %></h1>
      <img class="store_photo" src=<%= imgSrc %> alt=<%= imgAlt %>>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12  text-center">
    <p><%= price %></p>
    
    <form action="ProcessCart" method="post" id="addToCartForm">
		<input type="hidden" name="product" value=<%= product %> />
    </form>
    <form action="Checkout" method="post" id="buyForm">
		<input type="hidden" name="product" value=<%= product %> />
    </form>
    
    -->  
    
    <label>Quantity:</label>
    <select name="quantity" form="addToCartForm">
	  <option value="1">1</option>
	  <option value="2">2</option>
	  <option value="3">3</option>
	  <option value="4">4</option>
	  <option value="5">5</option>
	  <option value="6">6</option>
	  <option value="7">7</option>
	  <option value="8">8</option>
	  <option value="9">9</option>
	  <option value="10">10</option>
	</select>
	
	<br />
	<br />
	
    <button class="btn-orange" form="addToCartForm" type="submit" value="Add to cart">Add to cart</button>
    <br /><br />
    <button class="btn-orange" form="buyForm" type="submit" value="Add to cart">Buy now</button>
   
</div>
  </div>
</div>
<br />

<%@ include file="include/footer.jsp" %>

</body>
</html>