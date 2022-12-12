
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>UTEShop </title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

  
        
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
    <link rel="stylesheet" href="css/detail.css">
    <link rel="stylesheet" href="css/shop.css">
    </head>

    <body>



        <!-- Header -->
        <jsp:include page="common/header.jsp"></jsp:include>
            <!--/ End Header -->



            <!-- Checkout Start -->
            <div class="container-fluid pt-5">
                <div class="row px-xl-5">
                    <div class="col-lg-8">
                        <div class="mb-4">
                            <h4 class="font-weight-semi-bold mb-4">Địa chỉ người nhận </h4>
                            <div class="row">
                                <div class="col-md-6 form-group">
                                    <label>Họ và tên  </label>
                                    <input class="form-control" type="text" placeholder="Nguyễn Văn A">
                                </div>

                                <div class="col-md-6 form-group">
                                    <label>E-mail</label>
                                    <input class="form-control" type="text" placeholder=thanhtuyet@gmail.com">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label>Số điện thoại </label>
                                    <input class="form-control" type="text" placeholder="+123 456 789">
                                </div>
                                <div class="col-md-6 form-group">
                                    <label>Địa chỉ </label>
                                    <input class="form-control" type="text" placeholder="1 Võ Văn Ngân">
                                </div>
                              
                       
                              

                             
                            </div>
                        </div>
                      
                    </div>
                    <div class="col-lg-4">
                        <div class="card border-secondary mb-5">
                            <div class="card-header bg-secondary border-0">
                                <h4 class="font-weight-semi-bold m-0">Tổng đơn hàng của bạn </h4>
                            </div>
                        <c:forEach var="product" items="${ products }">
                            <div class="card-body">
                                <h5 class="font-weight-medium mb-3">Sản phẩm </h5>
                                <div class="d-flex justify-content-between">
                                    <p>Điện thoại </p>
                                    <p>${ product.productName }</p>
                                </div>
                                
                                
                                <hr class="mt-0">
                                <div class="d-flex justify-content-between mb-3 pt-1">
                                    <h6 class="font-weight-medium">Giá sản phẩm </h6>
                                    <h6 class="font-weight-medium">${ product.price }</h6>
                                </div>
                                <div class="d-flex justify-content-between">
                                    <h6 class="font-weight-medium">Phí vận chuyển </h6>
                                    <h6 class="font-weight-medium">Miễn phí </h6>
                                </div>
                            </div>
                            <div class="card-footer border-secondary bg-transparent">
                                <div class="d-flex justify-content-between mt-2">
                                    <h5 class="font-weight-bold">Tổng </h5>
                                    <h5 class="font-weight-bold">${ product.price }</h5>
                                </div>
                            </div>
                            </c:forEach>
                        </div>
                        <div class="card border-secondary mb-5">
                            <div class="card-header bg-secondary border-0">
                                <h4 class="font-weight-semi-bold m-0">Phương thức thanh toán </h4>
                            </div>
                            <div class="card-body">
                                
                                <div class="form-group">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" name="payment" id="directcheck">
                                        <label class="custom-control-label" for="directcheck">Thanh toán khi nhận được hàng </label>
                                    </div>
                                </div>
                                <div class="">
                                    <div class="custom-control custom-radio">
                                        <input type="radio" class="custom-control-input" name="payment" id="banktransfer">
                                        <label class="custom-control-label" for="banktransfer">Thanh toán bằng ngân hàng </label>
                                    </div>
                                </div>
                            </div>
                            <form action="thanks" method="get">
                                <div class="card-footer border-secondary bg-transparent">
                                <button  class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3">Đặt hàng </button>
                            </div>
                            </form>
                            
                        </div>
                    </div>
                </div>
            </div>
            <!-- Checkout End -->


            <!-- Start Footer Area -->
        <jsp:include page="common/footer.jsp"></jsp:include>
        <!-- /End Footer Area -->

     

        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="lib/easing/easing.min.js"></script>
        <script src="lib/owlcarousel/owl.carousel.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="mail/jqBootstrapValidation.min.js"></script>
        <script src="mail/contact.js"></script>

        <!-- Template Javascript -->
        <script src="js/main.js"></script>
    </body>

</html>