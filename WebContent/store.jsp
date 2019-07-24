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
<link rel="stylesheet" type="text/css" href="css/main.css"/></head>
<body>

<jsp:include page="include/header.jsp" />

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-12  text-center">
      <h1>STORE</h1>
    </div>
  </div>

    <br>

   <div class="row store-featured text-center">
         <div class="col-md-4">
           <div class="store-featured-item">
                <h4>T-Shirt</h4>
                    <img src="img/merch/T-Shirt.png" alt="logo t-shirt" width="128" height="128">
                	<form action="item.jsp" method="post">
                		<input type="hidden" name="product" value="T-Shirt"/>
                		<input type="hidden" name="price" value="$25"/>
                		<input type="hidden" name="src" value="img/merch/T-Shirt.png"/>
                		<input type="submit" value="View Item">
                	</form>
	                <p>$25</p>
                <p>Limited edition design!</p>
            </div>
          </div>
          <div class="col-md-4">
           <div class="store-featured-item">
                <h4>Cap</h4>
                    <img src="img/merch/Cap.png" alt="logo cap" width="128" height="128">
                	<form action="item.jsp" method="post">
                		<input type="hidden" name="product" value="Cap"/>
                		<input type="hidden" name="price" value="$15"/>
                		<input type="hidden" name="src" value="img/merch/Cap.png"/>
                		<input type="submit" value="View Item">
                	</form>
	                <p>$15</p>
                <p>Get your porcupine gear here!</p>
            </div>
          </div>
           <div class="col-md-4">
           	  <div class="store-featured-item">
                <h4>Mug</h4>
                    <img src="img/merch/Mug.png" alt="logo t-shirt" width="128" height="128">
                	<form action="item.jsp" method="post">
                		<input type="hidden" name="product" value="Mug"/>
                		<input type="hidden" name="price" value="$5"/>
                		<input type="hidden" name="src" value="img/merch/Mug.png"/>
                		<input type="submit" value="View Item">
                	</form>
	                <p>$5</p>
                <p>Perfect for your morning cofee!</p>
            </div>
          </div>
      </div><!--  row  -->
      
  </div>

<br />
<%@ include file="include/footer.jsp" %>

</body>
</html>