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
    <div class="col-md-4  text-center">
      <h1>T-shirt</h1>
      <img class="store_photo" src="img/merch/tshirt_logo_orange_720.png" alt="orange logo t-shirt">
    </div>
    <div class="col-md-4">
      <p>This t-shirt is 100% cotton.....</p>
    </div>
  </div>
  <div class="row">
    <div class="col-md-4  text-center">
      <button class="btn-orange" type="submit">Add to cart</button>
    </div>
  </div>
</div>

<br />

<%@ include file="include/footer.jsp" %>

</body>
</html>