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

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-4 offset-md-4">
      <h1>Checkout</h1>
      <form class="billing_info text-right" action="sucessCheckout.html" method="post">
        <table>
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
        </table>
        <br>
        <h3>Shipping Information</h3>
        <table>
          <tr>
            <td>First Name:</td>
            <td><input type="text" name="first_name" value=""></td>
          </tr>
          <tr>
            <td>Last Name:</td>
            <td><input type="text" name="last_name" value=""></td>
          </tr>
          <tr>
            <td>Phone Number:</td>
            <td><input type="text" name="phone" value=""></td>
          </tr>
          <tr>
            <td>Email:</td>
            <td><input type="text" name="email" value=""></td>
          </tr>
          <tr>
            <td>Address 1:</td>
            <td><input type="text" name="address 1" value=""></td>
          </tr>
          <tr>
            <td>Address 2:</td>
            <td><input type="text" name="address 2" value=""></td>
          </tr>
          <tr>
            <td>City:</td>
            <td><input type="text" name="city" value=""></td>
          </tr>
          <tr>
            <td>Zip Code:</td>
            <td><input type="text" name="zip_code" value=""></td>
          </tr>
        </table>
        <br>
        <h3>Billing Infomation</h3>
        <table>
          <tr>
            <td>Credit Card Number:</td>
            <td><input type="text" name="credit_card_num" value=""></td>
          </tr>
          <tr>
            <td>Security Code:</td>
            <td><input type="text" name="credit_card_sec_code" value=""></td>
          </tr>
          <tr>
            <td>Expiration Date (mm/YY):</td>
            <td><input type="text" name="expiration_date_mm" value=""></td>
            <td><input type="text" name="expiration_date_yy" value=""></td>
          </tr>
          <tr>
            <td>Billing Addess is the same as shipping:</td>
            <td><input type="checkbox" name="same_bill_address" value=""></td>
          </tr>
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