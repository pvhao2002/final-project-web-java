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
    <title>UTEShop</title>
    <link rel="icon" type="image/png" href="images/favicon-32x32.png">
    <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">
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

    <!-- Eshop StyleSheet -->
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

</head>
<body class="js">
<!-- Header -->
<jsp:include page="common/header.jsp"></jsp:include>
<!--/ End Header -->

<!-- start banner -->
<div class="content_banner">
    <div class="content__container">
        <div class="main">
            <div class="homepage">
                <div class="homepage-image">
                    <div class="homepage-left">
                        <i class="fas fa-chevron-left homepage-left-icon-back"></i> <a href="" class="homepage-left-item">
                        <img src="images/banner3.png"
                             alt="" class="homepage-left-img">
                        </a> <i class="fas fa-chevron-right homepage-left-icon-next"></i>
                    </div>
                    <div class="homepage-right">
                        <a href="#" class="homepage-right-item">
                            <img src="images/banner1.png">
                        </a>
                        <a href="#" class="homepage-right-item">
                            <img src="images/banner2.png">
                        </a>
                    </div>
                </div>
                <div class="homepage-brands">
                    <div class="homepage-brands-title">
                        <span>THƯƠNG HIỆU SẢN PHẨM</span>
                    </div>
                    <div class="homepage-brands-group">
                        <div class="homepage-brands-body">
                            <div class="homepage-brands-group-top">
                                <c:forEach var="o" items="${brands}">
                                    <a href="shop?brandId=${o.brandId}" class="homepage-brands-item"> <img src="${o.logo}"></a>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- end banner -->

<!-- Start Product outstanding-->
<div class="product-area section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Nỗi bật nhất</h2>
                </div>
                <div class="product-info">
                    <c:forEach items="${product_outstandingList}" var="o">
                        <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="shopDetail?pid=${o.infoId.infoId}">
                                        <img class="default-img" src="${o.image}">
                                            <%--<img class="hover-img" src="${o.image}">--%>
                                    </a>
                                    <div class="button-head">
                                        <div class="product-action-2">
                                            <a href="#">Thêm vào giỏ hàng</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h3><a href="shopDetail?pid=${o.infoId.infoId}">${o.productName}</a></h3>
                                    <div class="product-price">
                                        <p class="vnd"><span>${o.price} </span> VNĐ</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Product outstanding -->

<!-- Start Product discount-->
<div class="product-area most-popular section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="section-title">
                    <h2>Giảm giá lớn</h2>
                </div>
                <div class="owl-carousel popular-slider">
                    <!-- Start Single Product -->
                    <c:forEach items="${product_discountList}" var="o">
                        <div class="single-product">
                            <div class="product-img">
                                <a href="shopDetail?pid=${o.infoId.infoId}">
                                    <img class="default-img" src="${o.image}" alt="#">
                                        <%--                                    <img class="hover-img" src="${o.image}" alt="#">--%>
                                    <span class="out-of-stock">Hot</span>
                                </a>
                                <div class="button-head">
                                    <div class="product-action-2">
                                        <a href="#">Thêm vào giỏ hàng</a>
                                    </div>
                                </div>
                            </div>
                            <div class="product-content">
                                <h3><a href="shopDetail?pid=${o.infoId.infoId}">${o.productName}</a></h3>
                                <div class="product-price">
                                    <span class="old">${o.price*1.1} VNĐ</span>
                                    <p class="vnd"><span>${o.price} </span> VNĐ</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <!-- End Single Product -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Product discount-->

<!-- Start Product new-->
<section class="shop-home-list section">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Sản phẩm mới</h1>
                        </div>
                    </div>
                </div>
                <!-- Start Single List  -->
                <c:forEach items="${product_newList}" var="o">
                    <div class="single-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="list-image overlay">
                                    <img src="${o.image}" alt="#">
                                    <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12 no-padding">
                                <div class="content">
                                    <h4 class="title"><a href="shopDetail?pid=${o.infoId.infoId}">${o.productName}</a></h4>
                                    <p class="price with-discount">${o.price} VNĐ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!-- End Single List  -->
            </div>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Sản phẩm cũ</h1>
                        </div>
                    </div>
                </div>
                <!-- Start Single List  -->
                <c:forEach items="${product_oldList}" var="o">
                    <div class="single-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="list-image overlay">
                                    <img src="${o.image}" alt="#">
                                    <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12 no-padding">
                                <div class="content">
                                    <h5 class="title"><a href="shopDetail?pid=${o.infoId.infoId}">${o.productName}</a></h5>
                                    <p class="price with-discount">${o.price} VNĐ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!-- End Single List  -->
            </div>
            <div class="col-lg-4 col-md-6 col-12">
                <div class="row">
                    <div class="col-12">
                        <div class="shop-section-title">
                            <h1>Sản phẩm rẻ</h1>
                        </div>
                    </div>
                </div>
                <!-- Start Single List  -->
                <c:forEach items="${product_cheapList}" var="o">
                    <div class="single-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-12">
                                <div class="list-image overlay">
                                        <img src="${o.image}" alt="#">
                                    <a href="#" class="buy"><i class="fa fa-shopping-bag"></i></a>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-12 no-padding">
                                <div class="content">
                                    <h5 class="title"><a href="shopDetail?pid=${o.infoId.infoId}">${o.productName}</a></h5>
                                    <p class="price with-discount">${o.price} VNĐ</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
                <!-- End Single List  -->
            </div>
        </div>
    </div>
</section>
<!-- End Product new-->

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
<script src="js/homepage.js"></script>
</body>
</html>