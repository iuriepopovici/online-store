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
String product = "T-shirt";
String imgSrc = "img/merch/T-shirt.png";
String imgAlt = "Logo T-shirt";
String price = "$15";
String
Vector<String> availProds = new Vector<String>();
availProds.add("Cap");
availProds.add("Mug");
availProds.add("T-Shirt");

Vector<String[]> itemImgs = new Vector<String[]>();

try {
	Connection conn = DBConnect.initDB();
	PreparedStatement imageSt = conn.prepareStatement("select product_id from Product where product_id=?");
	imageSt.setString(1, "T-Shirt");
	ResultSet rs = imageSt.executeQuery();
	
	for(int idx=0; idx < rs.length; idx++){
		String[] imageSet = new String[3];
		
		PreparedStatement imageSt = conn.prepareStatement("select * from Product_Images where product_id=?");
		imageSt.setInt(1, rs.getInt(idx));
		ResultSet rsImg = imageSt.executeQuery();
		
		imageSet[0] = rsImg.getString("image_default_sm");
		imageSet[1] = rsImg.getString("image_default_md");
		imageSet[2] = rsImg.getString("image_default_lg");
		
		itemImgs.add(imageSet);
	}
		
}
catch (Exception e) {
	System.err.println("Database Connection Failed");
	e.printStackTrace();
	//response.sendRedirect("store.jsp");
}



%>
<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-12  text-center">
      <h1><%= product %></h1>
      <img class="store_photo" src=<%= imgSrc %> alt=<%= imgAlt %>>
    </div>
  </div>
  <div class="row">
    <div class="col-md-12  text-center">
    <p><%= price %></p>
    <form action="ProcessCart" method="post" id="adToCartForm">
		<input type="hidden" name="product" value=<%= product %> />
    </form>
    <button class="btn-orange" form="adToCartForm" type="submit" value="Add to cart">Add to cart</button>
    <br /><br />
    <form action="Checkout" method="post" id="buyForm">
		<input type="hidden" name="product" value=<%= product %> />
    </form>
    <button class="btn-orange" form="buyForm" type="submit" value="Add to cart">Buy now</button>
    </div>
  </div>
</div>
<br />

<%@ include file="include/footer.jsp" %>

</body>
</html>