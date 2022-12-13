<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name='copyright' content=''>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>UTEShop-Trang-chu</title>
    <link rel="icon" type="image/png" href="view/web/images/favicon-32x32.png">
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

    <link rel="stylesheet" href="view/web/css/reset.css">
    <link rel="stylesheet" href="view/web/style.css">
    <link rel="stylesheet" href="view/web/css/responsive.css">
</head>
<body class="js">
<!-- Header -->
<jsp:include page="/view/web/common/header.jsp"></jsp:include>
<!--/ End Header -->

<!-- start banner -->
<div class="content_banner">
    <div class="content__container">
        <div class="main">
            <div class="homepage">
                <div class="homepage-image">
                    <div class="homepage-left">
                        <i class="fas fa-chevron-left homepage-left-icon-back"></i> <a href="#" class="homepage-left-item">
                        <img src="view/web/images/banner3.png" alt="" class="homepage-left-img">
                    </a> <i class="fas fa-chevron-right homepage-left-icon-next"></i>
                    </div>
                    <div class="homepage-right">
                        <a href="#" class="homepage-right-item">
                            <img src="view/web/images/banner1.png">
                        </a>
                        <a href="#" class="homepage-right-item">
                            <img src="view/web/images/banner2.png">
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
                    <h2>Xu hướng</h2>
                </div>
                <div class="product-info">
                    <div class="tab-content" id="myTabContent">
                        <!-- Start Single Tab -->
                        <div class="tab-pane fade show active" id="man" role="tabpanel">
                            <div class="tab-single">
                                <div class="row">
                                    <c:forEach items="${product_trendList}" var="o">
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
                                                        <p class="vnd">
                                                            <span>
                                                                <c:set var="p" value="${o.price}"/>
                                                                <fmt:setLocale value="vi_VN"/>
                                                                <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/>
                                                            </span>
                                                        </p>
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
                                    <span class="old">
                                        <c:set var="pz" value="${o.price*1.1}"/>
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${pz}" type="currency" maxFractionDigits="0"/>
                                    </span>
                                    <p class="vnd">
                                        <span>
                                            <c:set var="p" value="${o.price}"/>
                                            <fmt:setLocale value="vi_VN"/>
                                            <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/>
                                        </span>
                                    </p>
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
                                    <p class="price with-discount">
                                        <c:set var="p" value="${o.price}"/>
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/>
                                    </p>
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
                                    <p class="price with-discount">
                                        <c:set var="p" value="${o.price}"/>
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/>
                                    </p>
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
                                    <p class="price with-discount">
                                        <c:set var="p" value="${o.price}"/>
                                        <fmt:setLocale value="vi_VN"/>
                                        <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/>
                                    </p>
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
<jsp:include page="/view/web/common/section.jsp"></jsp:include>
<!-- End Shop Services Area and Shop Newsletter -->

<jsp:include page="/view/web/common/footer.jsp"></jsp:include>
