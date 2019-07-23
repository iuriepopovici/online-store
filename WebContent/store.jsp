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
      <h1>Store</h1>
    </div>
  </div>

    <br>

   <div class="row store-featured text-center">
         <div class="col-md-3">
           <div class="store-featured-item">
                <h4>T-Shirt</h4>
	                <a href="item.jsp?value=T-Shirt">
	                	<img src="img/merch/T-Shirt.png" alt="logo t-shirt" width="128" height="128">
	                </a>
                <p>Limited edition design!</p>
            </div>
          </div>
          <div class="col-md-3">
              <div class="store-featured-item">
                <h4>Cap</h4>
                <a href="item.jsp?value=Cap">
                	<img src="img/merch/Cap.png" alt="logo cap" width="128" height="128">
                </a>
                <p>Get your porcupine gear here!</p>
              </div>
           </div>
           <div class="col-md-3">
            <div class="store-featured-item">
                <h4>Mug</h4>
                <a href="item.jsp?value=Mug">
            		<img src="img/merch/Mug.png" alt="logo mug" width="128" height="128">
            	</a>
                <p>Perfect for your morning coffee!</p>
            </div>
         </div>
      </div><!--  row  -->
      
  </div>

<br />
<%@ include file="include/footer.jsp" %>

</body>
</html>