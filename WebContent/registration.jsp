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
<div class="header container-fluid">
  <div class="row">
    <div class="col-lg-4">
    </div>
    <div class="col-lg-4 text-center">
      <a href="index.html">
        <img src="img/logo/logo_sans_title_720_blue.png"
          alt="Paula's Porcupine Pagoda logo" width="64" height="64">
      </a>
      <h3>Paula's Porcupine Pagoda</h3>
      <h5>Acupuncture Salon and Spa</h5>
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
        <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="store.html">Store</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Membership
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="registration.html">Sign Up</a>
          <a class="dropdown-item" href="workshop.html">Workshops</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="contact.html">Learn more</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="about.html">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="contact.html">Contact</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>

<div class="container-fluid">
  <br>
  <div class="row">
    <div class="col-md-4 offset-md-4  text-center">
      <h1>Registration</h1>
      <form class="registration" action="sucessRegistration.html" method="post">
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
        <input type="submit" name="submit_registration" value="Submit">
      </form>
    </div>
  </div>
</div>
</body>
</html>