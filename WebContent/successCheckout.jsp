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

<div class="successCheckout container-fluid">
  <div class="row">
    <div class="col-lg-6 offset-lg-3 text-center">
      <h2>Your transaction has been processed successfully!</h2>
      <h2>Thank you for your purchase!</h2>
    </div>
  </div>
 </div>
  <br>
 
<%@ include file="include/footer.jsp" %>

</body>
</html>