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

<div class="content container-fluid">
  <div class="row homeFeature">
    <div class="col-lg-4 offset-lg-4 text-center">
      <h1>Paula's Porcupine Pagoda</h1>
      <h2>Acupuncture Salon and Spa</h2>
      <% if(session.getAttribute("email") == null) {%>
      <a href="registration.jsp">
      	  <button class="btn-orange" type="submit">REGISTER</button>
      </a>
      <p>Register and get access to our workshops!</p>
      <% } %>
    </div>
  </div>
  <br>
    <div class="row">
      <div class="col-md-8 text-center">
        <div class="why_choose_us">
          <h4>An exceptional experience...</h4>
          <img src="img/photo/sm_pagoda_236_177.jpg" alt="Pagoda image">
          <p>The certified staff at Paula's Pocupine Pagoda will...</p>
        </div>
      </div>
      <div class="col-md-4 text-center">
        <div class="news">
          <h4>News</h4>
              <p>Free acupuncture workshops!</p>
              <p>You need to be a member!</p> 
              <p>Click below to register for a free account or to sign up for a workshop!</p>
              <p>Cofee and refreshments will be served!</p>
              <button class="btn-orange" type="submit">SIGN UP</button>
            
            <!-- <li>
              <p>Subscribe to our newsletter!</p>
              <button class="btn-orange" type="submit">SUBSCRIBE</button>
            </li> -->
          
        </div>
      </div>
    </div>
<br>
    <div class="row store-featured text-center">
      <div class="col-md-4">
          <div class="text-center store-featured-item">
            <h4>Mug</h4>
            <img src="img/merch/Mug.png" alt="blue logo mug" width="128" height="128">
            <p>Pefect for your morning coffee!</p>
          </div>
      </div>
      <div class="col-md-4">
          <div class="text-center store-featured-item">
            <h4>T-Shirt</h4>
            <img src="img/merch/T-Shirt.png" alt="orange logo t-shirt" width="128" height="128">
            <p>Limited edition design!</p>
          </div>
      </div>
      <div class="col-md-4">
          <div class="text-center store-featured-item">
            <h4>Cap</h4>
            <img src="img/merch/Cap.png" alt="blue logo cap" width="128" height="128">
            <p>Get your porcupine gear here!</p>
          </div>
       </div>     
  </div>
   

  </div>
<br>

 <%@ include file="include/footer.jsp" %>
 
</body>
</html>