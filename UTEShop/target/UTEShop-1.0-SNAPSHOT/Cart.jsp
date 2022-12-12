<%-- 
    Document   : Cart
    Created on : Dec 6, 2022, 4:05:16 PM
    Author     : lethi
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <!-- Meta Tag -->
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name='copyright' content=''>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Title Tag  -->
        <title>UTESHop - Cart </title>
        <!-- Favicon -->
        <link rel="icon" type="image/png" href="images/favicon.png">
        <!-- Web Font -->
        <link href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

        <!-- StyleSheet -->

        <!-- Bootstrap -->
        <link rel="stylesheet" href="css/bootstrap.css">
        <!-- Magnific Popup -->
        <link rel="stylesheet" href="css/magnific-popup.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="css/font-awesome.css">
        <!-- Fancybox -->
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <!-- Themify Icons -->
        <link rel="stylesheet" href="css/themify-icons.css">
        <!-- Nice Select CSS -->
        <link rel="stylesheet" href="css/niceselect.css">
        <!-- Animate CSS -->
        <link rel="stylesheet" href="css/animate.css">
        <!-- Flex Slider CSS -->
        <link rel="stylesheet" href="css/flex-slider.min.css">
        <!-- Owl Carousel -->
        <link rel="stylesheet" href="css/owl-carousel.css">
        <!-- Slicknav -->
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


        <!-- Breadcrumbs -->
        <div class="breadcrumbs">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="bread-inner">
                            <ul class="bread-list">
                                <li><a href="index1.html">Home<i class="ti-arrow-right"></i></a></li>
                                <li class="active"><a href="blog-single.html">Cart</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Breadcrumbs -->

        <!-- Shopping Cart -->
        <div class="shopping-cart section">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- Shopping Summery -->



                        <!--                        <table class="table shopping-summery">
                                                    <thead>
                                                        <tr class="main-hading">
                                                            <th>Sản phẩm </th>
                                                            <th>Tên </th>
                                                            <th class="text-center">Giá Sản Phẩm </th>
                                                            <th class="text-center">Số lượng </th>
                                                            <th class="text-center">Tổng tiền </th> 
                                                            <th class="text-center"><i class="ti-trash remove-icon"></i></th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                           
                                                            <td class="image" data-title="No">
                                                                 <img src="${pro.image}" alt="#">
                                                            </td>
                                                            <td class="product-des" data-title="Description">
                                                                <p class="product-name"><a href="#">${item.key.title}</a></p>
                                                                
                                                                <p class="product-des">${product.description}</p>
                                                            </td>
                                                            
                                                            <td class="price" data-title="Price"><span>$${item.key.price} </span></td>
                                                            
                                                            <td class="qty" data-title="Qty"> Input Order 
                                                                <div class="input-group">
                                                                    <div class="button minus">
                                                                        <button type="button" class="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                                                                            <i class="ti-minus"></i>
                                                                        </button>
                                                                    </div>
                                                                    <input type="text" name="quant[1]" class="input-number"  data-min="1" data-max="100" value="1">
                                                                    <div class="button plus">
                                                                        <button type="button" class="btn btn-primary btn-number" data-type="plus" data-field="quant[1]">
                                                                            <i class="ti-plus"></i>
                                                                        </button>
                                                                    </div>
                                                                </div>
                                                                / End Input Order 
                                                            </td>
                                                            <td class="total-amount" data-title="Total"><span>$${item.value * item.key.price}</span></td>
                                                            <td class="action" data-title="Remove"><a href="#"><i class="ti-trash remove-icon"></i></a></td>
                                                        </tr>
                                                      
                                                    </tbody>
                                                </table>-->
                        <table class="table shopping-summery">
                            <thead>
                                <tr class="main-hading">
                                    <th>Sản phẩm </th>
                                    <th>Tên </th>
                                    <th class="text-center">Giá Sản Phẩm </th>
                                    <th class="text-center">Số lượng </th>
                                    <th class="text-center">Tổng tiền </th> 
                                    <th class="text-center"><i class="ti-trash remove-icon"></i></th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="product" items="${ products }">
                                    <tr>
                                        <td class="image" data-title="No">
                                            <img width="200" src="${product.image}" alt="#">
                                        </td>
                                        <td><c:out value="${ product.productName }"></c:out></td>
                                        <td><c:out value="${ product.price }"></c:out></td>
                                            <td class="qty" data-title="Qty"> 
                                                <div class="input-group">
                                                    <div class="button minus">
                                                        <button type="button" class="btn btn-primary btn-number" disabled="disabled" data-type="minus" data-field="quant[1]">
                                                            <i class="ti-minus"></i>
                                                        </button>
                                                    </div>
                                                    <input type="text" name="quant[1]" class="input-number"  data-min="1" data-max="5" value="1">
                                                    <div class="button plus">
                                                        <button type="button" class="btn btn-primary btn-number" data-type="plus" data-field="quant[1]">
                                                            <i class="ti-plus"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                               
                                            </td>
                                            <td class="total-amount" data-title="Total"><span>${ product.price}</span></td>
                                        <td class="action" data-title="Remove"><a href="#"><i class="ti-trash remove-icon"></i></a></td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <!--/ End Shopping Summery -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <c:forEach var="product" items="${ products }">
                        <!-- Total Amount -->
                        <div class="total-amount">
                            <div class="row">
                                
                                <div class="col-lg-4 col-md-7 col-12">
                                    <div class="right">
                                        <ul>
                                            <li>Tổng tiền <span>${ product.price}</span></li>
                                            <li>Shipping<span>Free</span></li>
                                                   
                                        </ul>

                                 <form action="checkout" method="post" class="button5">
                                    
                                    <input type="hidden" name="productId" value=${product.productId}>
                                    <!--<input type="submit" class="btn btn-primary px-3"  value="Thanh toán " >-->
                                    <button class="btn btn-primary px-3" ><i class="fa fa-credit-card" aria-hidden="true" style="color: #fff"></i> Thanh toán  </button>
                                    <button class="btn btn-primary px-3" ><i class="fa fa-shopping-cart mr-1" style="color: #fff"></i> Tiếp tục mua sắm </button>
                                </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--/ End Total Amount -->
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!--/ End Shopping Cart -->

        <!-- Start Shop Services Area  -->
        <section class="shop-services section">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-rocket"></i>
                            <h4>Miễn phí vận chuyển</h4>
                            <p>Với mọi mặt hàng của shop </p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-reload"></i>
                            <h4>Hoàn lại hàng miễn phí</h4>
                            <p>Trong vòng 30 ngày </p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-lock"></i>
                            <h4>Thanh toán an toàn </h4>
                            <p>Trả tiền sau khi nhận được hàng </p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                    <div class="col-lg-3 col-md-6 col-12">
                        <!-- Start Single Service -->
                        <div class="single-service">
                            <i class="ti-tag"></i>
                            <h4>Giá tốt nhất</h4>
                            <p>Đảm bảo giá tốt nhất trên thị trường </p>
                        </div>
                        <!-- End Single Service -->
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Newsletter -->

        <!-- Start Shop Newsletter  -->
        <section class="shop-newsletter section">
            <div class="container">
                <div class="inner-top">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2 col-12">
                            <!-- Start Newsletter Inner -->
                            <div class="inner">
                                <h4>Cảm ơn và hẹn gặp lại </h4>
                                <p> Chúng tôi biết ngoài kia có nhiều sự lựa chọn khác nhưng bạn đã tin tưởng cửa hàng chúng tôi. Chúng tôi xin chân thành cảm ơn. Và hẹn gặp lại bạn </p>
                            
                            </div>
                            <!-- End Newsletter Inner -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Shop Newsletter -->



     
      <jsp:include page="common/footer.jsp"></jsp:include>

        <!-- Jquery -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.0.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <!-- Popper JS -->
        <script src="js/popper.min.js"></script>
        <!-- Bootstrap JS -->
        <script src="js/bootstrap.min.js"></script>
        <!-- Color JS -->
        <script src="js/colors.js"></script>
        <!-- Slicknav JS -->
        <script src="js/slicknav.min.js"></script>
        <!-- Owl Carousel JS -->
        <script src="js/owl-carousel.js"></script>
        <!-- Magnific Popup JS -->
        <script src="js/magnific-popup.js"></script>
        <!-- Fancybox JS -->
        <script src="js/facnybox.min.js"></script>
        <!-- Waypoints JS -->
        <script src="js/waypoints.min.js"></script>
        <!-- Countdown JS -->
        <script src="js/finalcountdown.min.js"></script>
        <!-- Nice Select JS -->
        <script src="js/nicesellect.js"></script>
        <!-- Ytplayer JS -->
        <script src="js/ytplayer.min.js"></script>
        <!-- Flex Slider JS -->
        <script src="js/flex-slider.js"></script>
        <!-- ScrollUp JS -->
        <script src="js/scrollup.js"></script>
        <!-- Onepage Nav JS -->
        <script src="js/onepage-nav.min.js"></script>
        <!-- Easing JS -->
        <script src="js/easing.js"></script>
        <!-- Active JS -->
        <script src="js/active.js"></script>
    </body>
</html>