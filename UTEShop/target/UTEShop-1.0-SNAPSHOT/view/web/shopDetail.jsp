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
    <title>UTEShop-Chi-tiet-san-pham</title>
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.4/jquery.rateyo.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/detail.css">
    <link rel="stylesheet" href="css/shop.css">
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
                        <li class="active">Chi tiết sản phẩm</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Shop Detail Start -->
<div class="product-area section">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <c:if test = "${product != null}">
                    <div class="chitietSanpham" style="height: 600px">
                    <h1>${product.productName}</h1>
                    <div class="rowdetail group">
                        <div class="picture">
                            <img src="${product.image}" onclick="opencertain()">
                        </div>
                        <div class="price_sale">
                            <div class="area_price"><strong>
                                <c:set var="p" value="${product.price}"/>
                                <fmt:setLocale value="vi_VN"/>
                                <fmt:formatNumber value="${p}" type="currency" maxFractionDigits="0"/>
                            </strong></div>
                            <div class="area_promo">
                                <div class="cont">Khi đến với <a href="home">UTEShop</a></div>
                                <div class="promo">
                                    <i class="fas fa-check-circle"></i>
                                    <div id="detailPromo">Khách hàng sẽ được thử máy miễn phí tại cửa hàng. Có thể đổi trả lỗi trong vòng 2 tháng.
                                        Khách hàng có thể mua trả góp sản phẩm với lãi suất 0% với thời hạn 6 tháng kể từ khi mua hàng.</div>
                                </div>
                            </div>
                            <div class="policy">
                                <div>
                                    <i class="fas fa-box-open"></i>
                                    <p>Trong hộp có: Sạc, Tai nghe, Sách hướng dẫn, Cây lấy sim, Ốp lưng </p>
                                </div>
                                <div>
                                    <i class="fas fa-medal"></i>
                                    <p>Bảo hành chính hãng 12 tháng.</p>
                                </div>
                                <div class="last">
                                    <i class="fas fa-sync"></i>
                                    <p>1 đổi 1 trong 1 tháng nếu lỗi, đổi sản phẩm tại nhà trong 1 ngày.</p>
                                </div>
                            </div>
                            <div class="d-flex align-items-center mb-4 pt-2">
                                <div class="input-group quantity mr-3" style="width: 130px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-primary btn-minus">
                                            <i class="fa fa-minus" style="color: #fff"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-primary btn-plus">
                                            <i class="fa fa-plus" style="color: #fff"></i>
                                        </button>
                                    </div>
                                </div>
                                <button class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1" style="color: #fff"></i> Thêm vào giỏ hàng</button>
                            </div>
                        </div>
                        <div class="info_product">
                                <h2>Thông số kỹ thuật</h2>
                                <ul class="info">
                                    <li><p>Màn hình</p><div>${product.infoId.manhinh}</div></li>
                                    <li><p>Hệ điều hành</p><div>${product.infoId.os}</div></li>
                                    <li><p>Camara sau</p><div>${product.infoId.cameraSau}</div></li>
                                    <li><p>Camara trước</p><div>${product.infoId.cameraSelfie}</div></li>
                                    <li><p>CPU</p><div>${product.infoId.cpu}</div></li>
                                    <li><p>RAM</p><div>${product.infoId.ram}</div></li>
                                    <li><p>Bộ nhớ trong</p><div>${product.infoId.rom}</div></li>
                                    <li><p>Thẻ nhớ</p><div>${product.infoId.thenho}</div></li>
                                    <li><p>Dung lượng pin</p><div>${product.infoId.cell}</div></li>
                                </ul>
                        </div>
                    </div>
                </div>
                    <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                        <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Mô tả</a>
                        <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">Đánh giá (0)</a>
                    </div>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="tab-pane-1">
                            <h4 class="mb-3">Mô tả sản phẩm</h4>
                            <p>${product.description}</p>
                        </div>
                        <div class="tab-pane fade" id="tab-pane-2">
                            <c:if test = "${sessionScope.account.email == null}">
                                <div class="title">
                                    <a href="login" style="text-decoration: underline;">Đăng nhập để gửi đánh giá của bạn</a>
                                </div>
                            </c:if>
                            <c:if test = "${sessionScope.account.email != null}">
                                <div class="row">
                                    <div class="col-md-6">
                                        <h4 class="mb-4">1 đánh giá cho "${product.productName}"</h4>
                                        <div class="media mb-4">
                                            <div class="media-body">
                                                <h6>John Doe<small> - <i>01 Jan 2045</i></small></h6>
                                                <div class="text-primary mb-2">
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star"></i>
                                                    <i class="fas fa-star-half-alt"></i>
                                                    <i class="far fa-star"></i>
                                                </div>
                                                <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <h4 class="mb-4">Để lại đánh giá</h4>
                                        <div class="d-flex my-3">
                                            <p class="mb-0 mr-2">Xếp hạng * :</p>
                                            <div id="rating"></div>
                                            <input type="hidden" name="hdrating" id="hdrating">
                                        </div>
                                        <form method="post" action="send-review">
                                            <div class="form-group">
                                                <label for="message" valign ="top">Đánh giá *</label>
                                                <textarea id="message" name="message" cols="30" rows="5" class="form-control"></textarea>
                                            </div>
                                            <div class="form-group mb-0">
                                                <input type="submit" value="Gửi" class="btn btn-primary px-3">
                                                <input type="hidden" name="productId" value="${product.productId}">
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </c:if>
                        </div>
                    </div>


                    <!-- Start Product discount-->
                    <div class="product-area most-popular">
                        <div class="section-title">
                            <h2>Bạn có thể thích</h2>
                        </div>
                        <div class="owl-carousel popular-slider">
                            <!-- Start Single Product -->
                            <c:forEach items="${product_randomList}" var="o">
                                <div class="single-product">
                                    <div class="product-img">
                                        <a href="shopDetail?pid=${o.infoId.infoId}">
                                            <img class="default-img" src="${o.image}" alt="#">
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
                            </c:forEach>
                            <!-- End Single Product -->
                        </div>
                    </div>
                    <!-- End Product discount-->
                </c:if>

                <c:if test = "${product == nulll}">
                    <div id="productNotFound" style="min-height: 300px;text-align: center;margin: 50px;display: block;">
                        <h1 style="color: red; margin-bottom: 10px;">Không tìm thấy sản phẩm</h1>
                        <a class="comeback" href="home" style="text-decoration: underline;">Quay lại trang chủ</a>
                    </div>
                </c:if>
            </div>
        </div>
    </div>
</div>
<!-- Shop Detail End-->

<!-- Start Shop Services Area and Shop Newsletter-->
<jsp:include page="common/section.jsp"></jsp:include>
<!-- End Shop Services Area and Shop Newsletter -->

<!-- Start Footer Area -->
<jsp:include page="common/footer.jsp"></jsp:include>
<!-- /End Footer Area -->

<!-- Jquery -->
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery-migrate-3.0.0.js" type="text/javascript"></script>
<script src="js/jquery-ui.min.js" type="text/javascript"></script>
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
<script src="https://cdnjs.cloudflare.com/ajax/libs/rateYo/2.3.4/jquery.rateyo.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $ (function() {
        $ ("#rating").rateYo({
            rating: 0,
            numStars: 5,
            maxValue: 5,
            halfStart: true,
            onChange: function(rating, rateYoInstance){
                $('#hdrating').val(rating);
            }
        });
    });
</script>
</body>
</html>