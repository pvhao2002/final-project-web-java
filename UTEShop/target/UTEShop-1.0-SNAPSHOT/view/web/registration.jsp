<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>UTEShop-Dang-ki</title>

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
                    <h2 class="form-title">Đăng kí</h2>

                    <form method="post" action="signup" class="register-form" id="register-form">
                        <c:if test = "${check == 1 or check == 2 or check == 3}">
                            <div class="fail">${message}</div>
                        </c:if>
                        <c:if test = "${check == 0}">
                            <div class="success">${message}</div>
                        </c:if>

                        <div class="form-group">
                            <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input type="text" name="name" id="name" required="required" placeholder="Nhập họ tên" style="width:100%;"/>
                        </div>
                        <div class="form-group">
                            <label for="email"><i class="zmdi zmdi-email"></i></label>
                            <input type="email" name="email" id="email" required="required" placeholder="Nhập email" style="width:100%;"/>
                        </div>
                        <div class="form-group">
                            <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                            <input type="password" name="pass" id="pass" required="required" placeholder="Nhập mật khẩu" style="width:100%;"/>
                        </div>
                        <div class="form-group">
                            <label for="re_pass"><i class="zmdi zmdi-lock-outline"></i></label>
                            <input type="password" name="re_pass" id="re_pass" required="required" placeholder="Nhập lại mật khẩu" style="width:100%;"/>
                        </div>
                        <div class="form-group">
                            <label for="phone"><i class="zmdi zmdi-lock-outline"></i></label>
                            <input type="text" name="phone" id="phone" required="required" placeholder="Nhập số điện thoại" style="width:100%;"/>
                        </div>
                        <div class="form-group">
                            <label for="address"><i class="zmdi zmdi-lock-outline"></i></label>
                            <input type="text" name="address" id="address" required="required" placeholder="Nhập địa chỉ" style="width:100%;"/>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Đăng kí" />
                        </div>

                    </form>
                    <c:if test = "${check == 0}">
                        <a href="email-code" class="signup-image-link">Xác thực</a>
                    </c:if>
                </div>
                <div class="signup-image">
                    <figure>
                        <img src="images/signup-image.jpg" alt="sing up image">
                    </figure>
                    <a href="login" class="signup-image-link">Tôi đã có tài khoản</a>
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
