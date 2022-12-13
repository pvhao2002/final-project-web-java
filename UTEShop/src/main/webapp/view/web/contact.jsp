<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>UTEShop-Lien-he</title>
    <link rel="icon" type="image/png" href="images/favicon-32x32.png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <link rel="stylesheet" href="view/web/css/bootstrap.css">
    <link rel="stylesheet" href="view/web/css/magnific-popup.min.css">
    <link rel="stylesheet" href="view/web/css/font-awesome.css">
    <link rel="stylesheet" href="view/web/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="view/web/css/themify-icons.css">
    <link rel="stylesheet" href="view/web/css/niceselect.css">
    <link rel="stylesheet" href="view/web/css/animate.css">
    <link rel="stylesheet" href="view/web/css/flex-slider.min.css">
    <link rel="stylesheet" href="view/web/css/owl-carousel.css">
    <link rel="stylesheet" href="view/web/css/slicknav.min.css">

    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="view/web/css/reset.css">
    <link rel="stylesheet" href="view/web/style.css">
    <link rel="stylesheet" href="view/web/css/responsive.css">
</head>
<body class="js">
<!-- Header -->
<jsp:include page="common/header.jsp"></jsp:include>
<!--/ End Header -->
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="bread-inner">
                    <ul class="bread-list">
                        <li><a href="home">Trang chủ<i class="ti-arrow-right"></i></a></li>
                        <li class="active">Liên hệ</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Start Contact -->
<section id="contact-us" class="contact-us section">
    <div class="container">
        <div class="contact-head">
            <div class="row">
                <div class="col-lg-8 col-12">
                    <div class="form-main">
                        <div class="title">
                            <c:if test = "${check == 1}">
                                <h5 class="success">${message}</h5>
                            </c:if>
                            <h3>Viết cho chúng tôi một tin nhắn</h3>
                        </div>
                        <form class="form" method="post" action="contact">
                            <div class="row">
                                <div class="col-lg-6 col-12">
                                    <div class="form-group">
                                        <label>Họ tên của bạn<span>*</span></label>
                                        <input name="name" type="text" required="required" placeholder="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-12">
                                    <div class="form-group">
                                        <label>Chủ đề<span>*</span></label>
                                        <input name="subject" type="text" required="required" placeholder="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-12">
                                    <div class="form-group">
                                        <label>Email của bạn<span>*</span></label>
                                        <input name="email" type="email" required="required" placeholder="">
                                    </div>
                                </div>
                                <div class="col-lg-6 col-12">
                                    <div class="form-group">
                                        <label>Số điện thoại của bạn<span>*</span></label>
                                        <input name="company_name" type="text" required="required" placeholder="">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group message">
                                        <label>Tin nhắn<span>*</span></label>
                                        <textarea name="message" required="required" placeholder=""></textarea>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group button">
                                        <button type="submit" class="btn">Gửi tin nhắn</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-12">
                    <div class="single-head">
                        <div class="single-info">
                            <div class="contact_content">
                                <h4>Đừng lo thông tin bị rò rỉ.</h4>
                                <h3>Chúng tôi luôn lắng nghe và bảo mật cho bạn!</h3>
                            </div>
                            <div class="title">
                                <h4>Hãy liên hệ với chúng tôi</h4>
                            </div>
                            <i class="fa fa-phone"></i>
                            <ul>
                                <li>0337981963</li>
                                <li>0945013987</li>
                            </ul>
                        </div>
                        <div class="single-info">
                            <i class="fa fa-envelope-open"></i>
                            <ul>
                                <li><a href="mailto:info@yourwebsite.com">20110595@student.hcmute.edu.vn</a></li>
                                <li><a href="mailto:info@yourwebsite.com">20110470@student.hcmute.edu.vn</a></li>
                            </ul>
                        </div>
                        <div class="single-info">
                            <i class="fa fa-location-arrow"></i>
                            <ul>
                                <li>20 Đường số 3, Linh Trung, Thủ Đức</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--/ End Contact -->

<!-- Start Shop Services Area and Shop Newsletter-->
<jsp:include page="common/section.jsp"></jsp:include>
<!-- End Shop Services Area and Shop Newsletter -->

<jsp:include page="common/footer.jsp"></jsp:include>

