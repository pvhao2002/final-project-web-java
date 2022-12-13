<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>UTEShop-Mat-khau-email</title>

  <!-- Font Icon -->
  <link rel="stylesheet"
        href="fonts/material-icon/css/material-design-iconic-font.min.css">

  <!-- Main css -->
  <link rel="stylesheet" href="css/login.css">
</head>
<body>

<div class="main">

  <!-- Sign up form -->
  <section class="signup">
    <div class="container">
      <div class="signup-content">
        <div class="signup-form">
          <form method="post" action="email-password" class="register-form" id="register-form">
            <c:if test = "${check == 2}">
              <div class="fail">${message}</div>
            </c:if>
            <c:if test = "${check == 1}">
              <div class="success">${message}</div>
            </c:if>

            <div class="form-group">
              <label for="username"><i class="zmdi zmdi-account material-icons-name"></i></label>
              <input type="text" name="username" id="username" class="with" required="required" placeholder="Nhập email" />
            </div>
            <div class="form-group form-button">
              <input type="submit" name="submitcode" id="submitcode" class="form-submit" value="Gửi mã" />
            </div>
          </form>
        </div>
        <div class="signup-image">
          <a href="login" class="signup-image-link">Trở lại</a>
        </div>
      </div>
    </div>
  </section>


</div>
<!-- JS -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="js/main.js"></script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>
