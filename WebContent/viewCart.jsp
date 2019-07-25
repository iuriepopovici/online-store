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
<%@page import="porcupine_pagoda.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>

<br /><h1 class="col-md-12 text-center">Shopping Cart</h1><br />
<div class="container-fluid">
   <div class="row store-featured text-center">

<% 
int totalItems = 0;
int totalPrice = 0;

String src = "";
if(session.getAttribute("cart") != null) {
	ArrayList<CartItem> cart = (ArrayList<CartItem>)session.getAttribute("cart");
	for(int i=0; i < cart.size(); i++) {
		if(cart != null && cart.get(i) != null) {
			totalItems += cart.get(i).getNbItems();
			totalPrice += cart.get(i).getItemPrice();
			session.setAttribute("totalItems", totalItems);
			src = "<img src = 'img/merch/" + cart.get(i).getItemName() + ".png'>";
%>		
		

         <div class="col-md-3">
            <div class="store-featured-item">
                <h4><%= cart.get(i).getItemName() %></h4>
                <% out.println(src); %>
                <form action="item.jsp" method="post">
         			<input type="hidden" name="product" value="<%= cart.get(i).getItemName() %>"/>
         			<input type="hidden" name="price" value="<%= cart.get(i).getItemPrice() %>"/>
         		
         			<input type="submit" value="View Item">
         		</form>
         		<h4>$<%= cart.get(i).getItemPrice() %></h4>
         		
            </div>
        </div>
  
<br />

<% }} %>
	</div><!--  row  -->
</div>			
<br />
<h4 class="col-md-12 text-center"> Nb of items in your cart so far: <%= totalItems %></h4>
<br />
<h4 class="col-md-12 text-center"> Total price: $<%= totalPrice %></h4>
<br />
<div class="col-md-12 text-center">
	<button class="btn-orange text-center" form="checkoutCart" type="submit" value="Checkout">Checkout</button>
</div>
<br />
<% } else { %>

	<h4 class="col-md-12 text-center">Your shopping cart is empty!</h4>

<% } %>

<%@ include file="include/footer.jsp" %>
</body>
</html>