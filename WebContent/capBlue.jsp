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
itemCart.setItemName("Cap"); 
itemCart.setItemId(3);
itemCart.setNbItems(30);
itemCart.setItemPrice(12.99); 
itemCart.setColor("blue");
itemCart.setSku("sk20021");
itemCart.setWeight(1.2);
itemCart.setImgSm("img/merch/cap_logo_blue_128.png");
itemCart.setImgMd("img/merch/cap_logo_blue_256.png");
itemCart.setImgLg("img/merch/cap_logo_blue_720.png");
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
    </form>
    <button class="btn-orange" form="adToCartForm" type="submit" value="Add to cart">Add to cart</button>
    <br /><br />
    <form action="Checkout" method="post" id="buyForm">
		<input type="hidden" name="product" value=<%= itemCart.getItemId() %> />
    </form>
    <button class="btn-orange" form="buyForm" type="submit" value="Add to cart">Buy now</button>
    </div>
  </div>
</div>
<br />

<%@ include file="include/footer.jsp" %>

</body>
</html>