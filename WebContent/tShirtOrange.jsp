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
<%@ page import="porcupine_pagoda.CartItem" %>

<jsp:useBean id="itemCart" class="porcupine_pagoda.CartItem"/>  

<%
itemCart.setItemName("T-Shirt"); 
itemCart.setItemId(2);
itemCart.setNbItems(80);
itemCart.setItemPrice(7.99); 
itemCart.setColor("orange");
itemCart.setSku("sk10002");
itemCart.setWeight(1.0);
itemCart.setImgSm("img/merch/tshirt_logo_orange_128.png");
itemCart.setImgMd("img/merch/tshirt_logo_orange_256.png");
itemCart.setImgLg("img/merch/tshirt_logo_orange_720.png");
%>

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-12  text-center">
      <h1><%= itemCart.getItemName()+": "+itemCart.getColor() %></h1>
      <img class="store_photo" src=<%= itemCart.getImgMd() %> 
      	alt=<%= itemCart.getItemName()+" "+itemCart.getColor() %>>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12  text-center">
    <p><%= "$"+itemCart.getItemPrice() %></p>
    <form action="ProcessCart" method="post" id="adToCartForm">
		<input type="hidden" name="product" value=<%= itemCart.getItemId() %> />
		<p>Quantity (limit 5)<p>
  		<input type="number" name="quantity" min="1" max="5">
    </form>
    <button class="btn-orange" form="adToCartForm" type="submit" value="Add to cart">Add to cart</button>
    <br /><br />
    <form action="Checkout" method="post" id="buyForm">
		<input type="hidden" name="product" value=<%= itemCart.getItemId() %> />
		<input type="hidden" name="quantity" value="1">
    </form>
    <button class="btn-orange" form="buyForm" type="submit" value="Add to cart">Buy now</button>
    </div>
  </div>
</div>
<br />

<%@ include file="include/footer.jsp" %>

</body>
</html>