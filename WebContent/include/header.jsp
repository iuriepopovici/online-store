<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<link rel="stylesheet"
  href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
  crossorigin="anonymous" />
<link rel="stylesheet" type="text/css" href="../css/main.css"/>
<script src="https://code.jquery.com/jquery-2.1.3.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" 
	integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o" 
	crossorigin="anonymous"></script>
<div class="header container-fluid">
  <div class="row">
    <div class="col-lg-4">
    </div>
    <div class="col-lg-4 text-center">
      <a href="index.jsp">
        <img src="img/logo/logo_sans_title_720_blue.png"
          alt="Paula's Porcupine Pagoda logo" width="64" height="64">
      </a>
      <h3>Paula's Porcupine Pagoda</h3>
      <h5>Acupuncture Salon</h5>
    </div>
    <div class="col-lg-4">
    </div>
  </div>

</div><!--end div header -->

<nav class="navbar navbar-expand-lg navbar-light">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="store.jsp">Store</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="workshop.jsp">Workshops</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.jsp">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.jsp">Contact</a>
      </li>
    </ul>
    <% if(session.getAttribute("email") != null) {%>
	    <ul class="nav navbar-nav navbar-right">
	      <li class="nav-item">
	      	<a class="nav-link" href="#">
	      		<span class="glyphicon glyphicon-user"></span> ${email}
	      	</a>
	      </li>
	      <li class="nav-item">
	      	<a class="nav-link" href="viewCart.jsp">
	      		<img src="img/photo/cart.png" alt="shopping cart image">
	      		<span class="glyphicon glyphicon-log-in"></span>Cart
	      	</a>
	      </li>
	      <li class="nav-item">
	      	<a class="nav-link" href="logout.jsp">
	      		<span class="glyphicon glyphicon-log-in"></span> Logout
	      	</a>
	      </li>
	    </ul>
	 <% } else { %>
    
	    <ul class="nav navbar-nav navbar-right">
	      <li class="nav-item">
	      	<a class="nav-link" href="registration.jsp">
	      		<span class="glyphicon glyphicon-user"></span> Register
	      	</a>
	      </li>
	      <li class="nav-item">
	      	<a class="nav-link" href="login.jsp">
	      		<span class="glyphicon glyphicon-log-in"></span> Login
	      	</a>
	      </li>
	      <li class="nav-item">
	      	<a class="nav-link" href="viewCart.jsp">
	      		<img src="img/photo/cart.png" alt="shopping cart image">
	      		<span class="glyphicon glyphicon-log-in"></span>Cart
	      	</a>
	      </li>
	      
	    </ul>
	   <% } %>
  </div>
</nav>