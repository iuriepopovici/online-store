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

<h3>SHOPPING CART</h3>

<% 
int totalItems = 0;

if(session.getAttribute("cart") != null) {
	ArrayList<CartItem> cart = (ArrayList<CartItem>)session.getAttribute("cart");
	for(int i=0; i < cart.size(); i++) {
		if(cart != null && cart.get(i) != null) {
			totalItems += cart.get(i).getNbItems();
			session.setAttribute("totalItems", totalItems);
%>		
			<%= cart.get(i).getItemName() %>
<br />
<% }}}
else {
%>
<h4>Your shopping cart is empty!</h4>
<%} %>
<%@ include file="include/footer.jsp" %>
</body>
</html>