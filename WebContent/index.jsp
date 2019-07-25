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
      <h2>Acupuncture Salon</h2>
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
          <h6>Our certified employees provide the following services: </h6>
          <h6>Acupuncture/Masage Session (90 minutes): $120 </h6>
          <h6>Cupping (30 minutes): $45 </h6>
          <h6>Follow-Up Acupuncture Session (60 minutes): $80 </h6>
        </div>
      </div>
      <div class="col-md-4 text-center">
        <div class="news">
          <h4>News</h4>
              <p>Free acupuncture workshops!</p>
              <p>Don't miss this opportunity!</p> 
              <p>All workshops are held at our location!</p>
              <p>To sign up, click the button below. You will be able to choose your preferred topic and date.</p>
              <a href="workshop.jsp">
              	   <button class="btn-orange" type="submit">SIGN UP</button>
              </a>
              
            <!-- <li>
              <p>Subscribe to our newsletter!</p>
              <button class="btn-orange" type="submit">SUBSCRIBE</button>
            </li> -->
          
        </div>
      </div>
    </div>
<br>
	<div class="row">
    	<div class="col-md-12  text-center">
      		<h1>Head to our online store for the following items:</h1>
    	</div>
  	</div>
    <div class="row store-featured text-center">
      <div class="col-md-4">
          <div class="text-center store-featured-item">
            <h4><a href="item.jsp?value=Mug">Mug</a></h4>
            <a href="item.jsp?value=Mug">
            <img src="img/merch/mug_logo_blue_128.png" alt="Paula's Porcupine Pagoda logo mug" width="128" height="128">
            </a>
            <p>Pefect for your morning coffee!</p>
          </div>
      </div>
      <div class="col-md-4">
          <div class="text-center store-featured-item">
            <h4><a href="item.jsp?value=T-Shirt">T-Shirt</a></h4>
            <a href="item.jsp?value=T-Shirt">
            <img src="img/merch/tshirt_logo_orange_128.png" alt="Paula's Porcupine Pagoda logo t-shirt" width="128" height="128">
            </a>
            <p>Limited edition design!</p>
          </div>
      </div>
      <div class="col-md-4">
          <div class="text-center store-featured-item">
            
            <h4><a href="item.jsp?value=Cap">Cap</a></h4>
            <a href="item.jsp?value=Cap">
            <img src="img/merch/cap_logo_blue_128.png" alt="Paula's Porcupine Pagoda logo cap" width="128" height="128">
            </a>
            <p>Get your porcupine gear here!</p>
          </div>
       </div>     
  </div>
   

  </div>
<br>

 <%@ include file="include/footer.jsp" %>
 
</body>
</html>