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
double totalPrice = 0;

String src = "";
if(session.getAttribute("cart") != null) {
	ArrayList<CartItem> cart = (ArrayList<CartItem>)session.getAttribute("cart");
	
	
	// Remove cart item
	if(request.getParameter("remove") != null){
		int idx = Integer.parseInt(request.getParameter("remove"));
		//CartItem ci = cart.get(idx);
		cart.remove(idx);
		response.sendRedirect("viewCart.jsp");
	}
	
	
	
	for(int i=0; i < cart.size(); i++) {
		if(cart != null && cart.get(i) != null) {
			totalItems += cart.get(i).getNbItems();
			totalPrice += (cart.get(i).getItemPrice()*cart.get(i).getNbItems());
			session.setAttribute("totalItems", totalItems);
			src = "<img src = '"+cart.get(i).getImgSm()+"'>";
%>		
		
         <div class="col-md-3">
            <div class="store-featured-item">
                <h4><%= cart.get(i).getItemName() %></h4>
                <% out.println(src); %>
                
                <%
                	String itemLink;
                	if(cart.get(i).getItemId() == 1 || cart.get(i).getItemId() == 2)
                		itemLink = "./t_shirt";
                	else if (cart.get(i).getItemId() == 3 || cart.get(i).getItemId() == 4)
                		itemLink = "./cap";
                	else
                		itemLink = "./mug";   
                	
                	out.print("<a class='text-primary' href = "+itemLink+"><br/>View Item</a>");
                
                	if(cart.get(i).getSize() != "" || cart.get(i).getSize() != null)
                		out.print("<h4> Size: "+cart.get(i).getSize()+"</h4>");
                %>             
                
         		<h4>$<%= cart.get(i).getItemPrice() %> per item</h4>
         		
         		<h4>Count: <%= cart.get(i).getNbItems() %></h4>
         		
         		<form action="viewCart.jsp" method="post">
         			<input type="hidden" name="remove" value="<%=i%>">
         			<input type="submit" value="Remove">
         		</form>
         		
            </div>
        </div>
  
<br />

<% }} %>
	</div><!--  row  -->
</div>			
<br />
<h4 class="col-md-12 text-center"> Number of items in your cart so far: <%= totalItems %></h4>
<br />
<h4 class="col-md-12 text-center"> Total price: $<%= totalPrice %></h4>
<br />
<form action="checkout.jsp" id="Checkout">
	<input type="hidden" name="total" value="<%= totalPrice %>">
</form>
<%
	if(totalPrice != 0) {
%>
<div class="col-md-12 text-center">
	<button class="btn-orange text-center" form="Checkout" type="submit" value="Checkout">Checkout</button>
</div>
<br />
<%
	}
%>
	

<% } else { %>

	<h4 class="col-md-12 text-center">Your shopping cart is empty!</h4>

<% } %>

<%@ include file="include/footer.jsp" %>
</body>
</html>