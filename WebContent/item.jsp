<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
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

<%@ page import="java.util.*" %>

<%
String product = "Cap";
String imgSrc = "img/merch/Cap.png";
String imgAlt = "Logo Cap";
String price = "$15";
Vector<String> availProds = new Vector<String>();
availProds.add("Cap");
availProds.add("Mug");
availProds.add("T-Shirt");

if(request.getParameter("product") != null && request.getParameter("price") != null){
	if (availProds.contains(request.getParameter("product"))) {
		product = request.getParameter("product");
		price = request.getParameter("price");
		imgSrc = "img/merch/" + product + ".png";
		imgAlt = "Logo " + product;
	}
	else {
		//response.sendRedirect("store.jsp");
	} 
} 
else {
	//response.sendRedirect("store.jsp");
}
%>

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-12  text-center">
      <h1>${blueItem.itemName}</h1>
      <img class="store_photo" src="${blueItem.imgMd}" alt="${blueItem.itemName}">
    </div>
  </div>
  <div class="row">
  	<div class="col-md-4 offset-md-4 text-center">
	  	<table class="imageTable">
			<tr>
			<td> 
				<img class="store_preview" id="previewBlue" src="${blueItem.imgSm}" alt="${blueItem.itemName} preview">
			</td>
			<td> 
				<img class="store_preview" id="previewOrange" src="${orangeItem.imgSm}" alt="${orangeItem.itemName} preview">
			</td>
	  	 	</tr>
	  	</table> 		 		
  	</div>
  </div>
  <div class="row">
    <div class="col-md-12  text-center">
    <p id="itemPrice">${blueItem.itemPrice}</p>
    
    <form action="ProcessCart" method="post" id="addToCartForm">
		<!-- <input type="hidden" name="product" value="${blueItem.itemId}"/> -->
    </form>
    <form action="Checkout" method="post" id="buyForm">
		<input type="hidden" name="product" value="${blueItem.itemId}" />
    </form>
    
    <label>Color:</label>
    <select name="product" form="addToCartForm">
	  <option value="${blueItem.itemId}">${blueItem.color}</option>
	  <option value="${orangeItem.itemId}">${orangeItem.color}</option>
	</select>
    
    <label>Quantity:</label>
    <select name="quantity" form="addToCartForm">
	  <option value="1">1</option>
	  <option value="2">2</option>
	  <option value="3">3</option>
	  <option value="4">4</option>
	  <option value="5">5</option>
	  <option value="6">6</option>
	  <option value="7">7</option>
	  <option value="8">8</option>
	  <option value="9">9</option>
	  <option value="10">10</option>
	</select>
	
      
	<div class="sizeOptions">
	<label>Size:</label>
    <select name="size" form="addToCartForm">
      <option value="xsm">X-Small</option>
	  <option value="sm">Small</option>
	  <option value="md">Medium</option>
	  <option value="lg">Large</option>
	  <option value="xlg">X-Large</option>
	  <option value="xxlg">XX-Large</option>
	  <option value="3xlg">3X-Large</option>
	</select>
	</div>
	
	
	<br />
	<br />
	
    <button class="btn-orange" form="addToCartForm" type="submit" value="Add to cart">Add to cart</button>
    <br /><br />
    <button class="btn-orange" form="buyForm" type="submit" value="Add to cart">Buy now</button>
   
</div>
  </div>
</div>
<br />

<%@ include file="include/footer.jsp" %>

</body>
</html>