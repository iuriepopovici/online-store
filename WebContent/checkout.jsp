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

<%
String message = "";
String first_name = "";
String last_name = "";
String phone = "";
String email = "";
String address = "";
String zipcode = "";
String cc_num = "";
String cc_sec_code = "";
String expdate = "";

if (request.getAttribute("email_empty") != null || request.getAttribute("email_invalid") != null) {
	message = "<div class='alert alert-danger'>Please enter a valid email address!</div>";
} 

if (request.getAttribute("phone_empty") != null) {
	message = "<div class='alert alert-danger'>Please enter your phone number!</div>";
} 

if (request.getAttribute("cc_num_empty") != null) {
	message = "<div class='alert alert-danger'>Please enter a credit card number!</div>";
} 

if (request.getAttribute("cc_num_invalid") != null) {
	message = "<div class='alert alert-danger'>Please enter a valid credit card number!</div>";
} 

if (request.getAttribute("cc_sec_code_empty") != null) {
	message = "<div class='alert alert-danger'>Please enter your credit card security code number!</div>";
}

if (request.getAttribute("cc_sec_code_invalid") != null) {
	message = "<div class='alert alert-danger'>Please enter a valid credit card security code number!</div>";
}

if (request.getAttribute("expdate_invalid") != null) {
	message = "<div class='alert alert-danger'>Please enter a valid expiration date!</div>";
}

if (request.getAttribute("expdate_empty") != null) {
	message = "<div class='alert alert-danger'>Please enter an expiration date!</div>";
}

if (request.getAttribute("address_empty") != null) {
	message = "<div class='alert alert-danger'>Please enter your address!</div>";
} 

if (request.getAttribute("zipcode_empty") != null) {
	message = "<div class='alert alert-danger'>Please enter a valid zip code!</div>";
} 

if (request.getAttribute("first_name_empty") != null) {
	message = "<div class='alert alert-danger'>Please enter your first name!</div>";
} 

if (request.getAttribute("last_name_empty") != null) {
	message = "<div class='alert alert-danger'>Please enter your last name!</div>";
} 

if (request.getParameter("first_name")!= null) {
	first_name = request.getParameter("first_name");
}
if (request.getParameter("last_name")!= null) {
	last_name = request.getParameter("last_name");
}
if (request.getParameter("phone")!= null) {
	phone = request.getParameter("phone");
}
if (request.getParameter("email")!= null) {
	email = request.getParameter("email");
}
if (request.getParameter("address")!= null) {
	address = request.getParameter("address");
}
if (request.getParameter("phone")!= null) {
	phone = request.getParameter("phone");
}
if (request.getParameter("zipcode")!= null) {
	zipcode = request.getParameter("zipcode");
}
if (request.getParameter("cc_num")!= null) {
	cc_num = request.getParameter("cc_num");
}
if (request.getParameter("cc_sec_code")!= null) {
	cc_sec_code = request.getParameter("cc_sec_code");
}
if (request.getParameter("expdate")!= null) {
	expdate = request.getParameter("expdate");
}
%>

<jsp:include page="include/header.jsp" />

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-4 offset-md-4">
      <h1>Checkout</h1>
      <form class="billing_info text-right" action="Checkout" method="post">
        <!-- <table>
          <tr>
            <td>item 1</td>
            <td>$7.99</td>
          </tr>
          <tr>
            <td>item 2</td>
            <td>$14.99</td>
          </tr>
          <tr>
            <td>Tax:</td>
            <td>$1.99</td>
          </tr>
          <tr>
            <td>Total:</td>
            <td>$24.97</td>
          </tr>
        </table> -->
        <% if (request.getParameter("total") != null){%>
        <h4 class="text-center alert alert-primary">Your card will be charged for: $<%=request.getParameter("total") %></h4>
        <br>
        <% }%>
        <h3>Shipping Information</h3>
        <p>All fields required!</p>
        <%= message %>
        
        <table>
          <tr>
            <td>First Name:</td>
            <td><input type="text" name="first_name" value="<%= first_name %>"></td>
          </tr>
          <tr>
            <td>Last Name:</td>
            <td><input type="text" name="last_name" value="<%= last_name %>"></td>
          </tr>
          <tr>
            <td>Phone Number:</td>
            <td><input type="tel" name="phone" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" value="<%= phone %>"></td>
            <td><small>Format: 123-456-7890</small></td>
          </tr>
          <tr>
            <td>Email:</td>
            <td><input type="email" name="email" value="<%= email %>"></td>
          </tr>
          <tr>
            <td>Address:</td>
            <td><input type="text" name="address" value="<%= address %>"></td>
          </tr>
          <tr>
            <td>Zip Code:</td>
            <td><input type="number" min="9999" name="zipcode" value="<%= zipcode %>"></td>
          </tr>
        </table>
       
        <br>
        <h3>Billing Infomation</h3>
        <table>
          <tr>
            <td>Credit Card Number:</td>
            <td><input type="number" name="cc_num" value="<%= cc_num %>"></td>
          </tr>
          <tr>
            <td>Security Code:</td>
            <td><input type="text" name="cc_sec_code" value="<%= cc_sec_code %>"></td>
          </tr>
          <tr>
            <td>Expiration Date:</td>
			<td><input type="month" name="expir_date" min="2019-07" value="<%= expdate %>"></td>
        </table>
        
        <br>
        <input type="submit" name="submit_registration" value="Submit">
      </form>
    </div>
  </div>
</div>

<br />

<%@ include file="include/footer.jsp" %>

</body>
</html>