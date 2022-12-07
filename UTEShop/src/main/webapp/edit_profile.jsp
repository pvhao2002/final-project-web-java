<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>UTEShop-Chinh-sua-ho-so</title>
    <link rel="icon" type="image/png" href="images/favicon-32x32.png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
          rel="stylesheet">
    <link href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/magnific-popup.min.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/niceselect.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/flex-slider.min.css">
    <link rel="stylesheet" href="css/owl-carousel.css">
    <link rel="stylesheet" href="css/slicknav.min.css">

    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
</head>

<body class="js">
<!-- Header -->
<jsp:include page="common/header.jsp"></jsp:include>
<!--/ End Header -->

<section class="shop-services section profile">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class = "block">
                    <c:if test = "${check == 1 or check == 2 or check == 3}">
                        <div class="fail">${message}</div>
                    </c:if>
                    <c:if test = "${check == 0}">
                        <div class="success">${message}</div>
                    </c:if>
                    <c:if test = "${sessionScope.account != null}">
                        <h6 align="center" class="form-title">Welcome, ${sessionScope.account.fullName}</h6>
                        <div class="container">
                            <form method="post" action="edit-customer" class="register-form" id="register-form">
                                <div class="post">
                                    <div class="tab">Email :</div>
                                    <div class="tab">Họ tên :</div>
                                    <div class="tab">Mật khẩu cũ :</div>
                                    <div class="tab">Mật khẩu mới :</div>
                                    <div class="tab">Xác nhận mật khẩu :</div>
                                    <div class="tab">Số điện thoại :</div>
                                    <div class="tab">Địa chỉ :</div>
                                </div>
                                <div class="sidebar">
                                    <div class="tab1"><input type="text" name="email" readonly="True"
                                           value="${sessionScope.account.email}" required="required" maxlength="40"/></div>
                                    <c:if test = "${sessionScope.account.roleid.roleId == 0}">
                                        <div class="tab1"><input type="text" name="name" readonly="True"
                                                value="${sessionScope.account.fullName}" required="required" maxlength="40"/></div>
                                    </c:if>
                                    <c:if test = "${sessionScope.account.roleid.roleId == 1}">
                                        <div class="tab1"><input type="text" name="name"
                                                value="${sessionScope.account.fullName}" required="required" maxlength="40"/></div>
                                    </c:if>
                                    <div class="tab1"><input type="password" name="passwordOld"
                                           required="required" maxlength="40"/></div>
                                    <div class="tab1"><input type="password" name="passwordNew"
                                           required="required" maxlength="40"/></div>
                                    <div class="tab1"><input type="password" name="passwordComfirm"
                                           required="required" maxlength="40"/></div>
                                    <div class="tab1"><input type="text" name="phone"
                                           value="${sessionScope.account.phoneNumber}" required="required" maxlength="40"/></div>
                                    <div class="tab1"><input type="text" name="address"
                                           value="${sessionScope.account.address}" required="required" maxlength="40"/></div>
                                </div>
                                <input type="submit" name="submit" id="submit" class="submitprofile" value="Lưu" />
                            </form>
                        </div>
                        <a class="back" href="customer">Trở lại</a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</section>

<!-- Start Shop Services Area and Shop Newsletter-->
<jsp:include page="common/section.jsp"></jsp:include>
<!-- End Shop Services Area and Shop Newsletter -->

<!-- Start Footer Area -->
<jsp:include page="common/footer.jsp"></jsp:include>
<!-- /End Footer Area -->

<!-- Jquery -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-migrate-3.0.0.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/colors.js"></script>
<script src="js/slicknav.min.js"></script>
<script src="js/owl-carousel.js"></script>
<script src="js/magnific-popup.js"></script>
<script src="js/waypoints.min.js"></script>
<script src="js/finalcountdown.min.js"></script>
<script src="js/nicesellect.js"></script>
<script src="js/flex-slider.js"></script>
<script src="js/scrollup.js"></script>
<script src="js/onepage-nav.min.js"></script>
<script src="js/easing.js"></script>
<script src="js/active.js"></script>
</body>
</html>