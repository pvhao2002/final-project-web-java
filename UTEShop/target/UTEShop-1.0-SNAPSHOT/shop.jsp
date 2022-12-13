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
    <title>UTEShop-Cua-hang</title>
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
                        <li class="active">Cửa hàng</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Start product Frame -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <div class="col-lg-3 col-md-12">
            <!-- Trademark Start -->
            <div class="border-bottom mb-4 pb-4">
                <h5 class="font-weight-semi-bold mb-4">Thương hiệu</h5>
                <div class="ct" >
                    <form id="f1" action="shop">
                        <label><input type="checkbox" id="c0" name="cidd" ${chid[0]?"checked":""}
                               value="0" onclick="setCheck(this)"/>Tất cả
                        </label>
                        <c:forEach begin="0" end="${databrand.size()-1}" var="o">
                        <label><input type="checkbox" id="c1" name="cidd" ${chid[o+1]?"checked":""} ${databrand.get(o).getBrandId() == brandId?"checked":""}
                                   value="${databrand.get(o).getBrandId()}" onclick="setCheck(this)"/>${databrand.get(o).getBrandName()}
                        </label>
                        </c:forEach>
                    </form>
                </div>
            </div>
            <!-- Trademark End -->

            <!-- Price Start -->
            <div class="border-bottom mb-4 pb-4">
                <h5 class="font-weight-semi-bold mb-4">Giá bán</h5>
                <div class="ct">
                    <form id="f2" action="shop">
                        <label><input type="checkbox" id="g0" name="price" ${pb[0]?"checked":""}
                               value="0" onclick="setCheck1(this)"/>Tất cả
                        </label>
                        <c:forEach begin="0" end="${5}" var="o">
                        <label><input type="checkbox" id="g1" name="price" ${pb[o+1]?"checked":""}
                                   value="${(o+1)}" onclick="setCheck1(this)"/>${pp[o]}
                        </label>
                        </c:forEach>
                    </form>
                </div>
            </div>
            <!-- Price End -->
        </div>

        <!-- Shop Product Start -->
        <div class="col-lg-9 col-md-12">
            <div class="row pb-3">
                <div class="col-12 pb-1">
                    <div class="d-flex align-items-center justify-content-between mb-4">
                        <form action="shop" method="post">
                            <div class="input-group">
                                <input name="key" type="text" class="form-control" placeholder="Tìm theo tên">
                                <div class="input-group-append">
                                    <button class="input-group-text bg-transparent text-primary" onclick="this.form.submit()">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                        <div class="dropdown ml-4">
                            <button class="btn border dropdown-toggle" type="button" id="triggerId"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Xếp theo
                            </button>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="triggerId">
                                <a class="dropdown-item" href="shop?sortprice1=1">Giá cao đến thấp</a>
                                <a class="dropdown-item" href="shop?sortprice2=2">Giá thấp đến cao</a>
                                <a class="dropdown-item" href="shop?sortname1=1">Tên Z-A</a>
                                <a class="dropdown-item" href="shop?sortname2=2">Tên A-Z</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-info">
                            <div class="tab-content" id="myTabContent">
                                <!-- Start Single Tab -->
                                <div class="tab-pane fade show active" id="man" role="tabpanel">
                                    <div class="tab-single">
                                        <div class="row">
                                            <c:forEach items="${products}" var="o">
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
                <!-- start phân trang -->
                <div class="col-12 pb-1">
                    <nav aria-label="Page navigation">
                        <ul class="pagination justify-content-center mb-3">
                            <c:if test = "${indexPage>1}">
                                <li class="page-item">
                                    <c:if test = "${sortprice1==null and sortprice2==null and sortname1==null and sortname2==null}">
                                        <a class="page-link" href="shop?index=${indexPage-1}" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </c:if>

                                    <c:if test = "${sortprice1 == 1}">
                                        <a class="page-link" href="shop?index=${indexPage-1}&sortprice1=1" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </c:if>

                                    <c:if test = "${sortprice2 == 2}">
                                        <a class="page-link" href="shop?index=${indexPage-1}&sortprice2=2" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </c:if>

                                    <c:if test = "${sortname1 == 1}">
                                        <a class="page-link" href="shop?index=${indexPage-1}&sortname1=1" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </c:if>

                                    <c:if test = "${sortname2 == 2}">
                                        <a class="page-link" href="shop?index=${indexPage-1}&sortname2=2" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </c:if>

                                </li>
                            </c:if>

                            <c:if test = "${sortprice1==null and sortprice2==null and sortname1==null and sortname2==null}">
                                <c:forEach begin="1" end="${numberPage}" var="o">
                                    <li class="page-item ${indexPage==o?"active":""}"><a class="page-link" href="shop?index=${o} ">${o}</a></li>
                                </c:forEach>
                            </c:if>

                            <c:if test = "${sortprice1 == 1}">
                                <c:forEach begin="1" end="${numberPage}" var="o">
                                    <li class="page-item ${indexPage==o?"active":""}"><a class="page-link" href="shop?index=${o}&sortprice1=1">${o}</a></li>
                                </c:forEach>
                            </c:if>

                            <c:if test = "${sortprice2 == 2}">
                                <c:forEach begin="1" end="${numberPage}" var="o">
                                    <li class="page-item ${indexPage==o?"active":""}"><a class="page-link" href="shop?index=${o}&sortprice2=2">${o}</a></li>
                                </c:forEach>
                            </c:if>

                            <c:if test = "${sortname1 == 1}">
                                <c:forEach begin="1" end="${numberPage}" var="o">
                                    <li class="page-item ${indexPage==o?"active":""}"><a class="page-link" href="shop?index=${o}&sortname1=1">${o}</a></li>
                                </c:forEach>
                            </c:if>

                            <c:if test = "${sortname2 == 2}">
                                <c:forEach begin="1" end="${numberPage}" var="o">
                                    <li class="page-item ${indexPage==o?"active":""}"><a class="page-link" href="shop?index=${o}&sortname2=2">${o}</a></li>
                                </c:forEach>
                            </c:if>

                            <c:if test = "${indexPage<numberPage}">
                                <li class="page-item">
                                    <c:if test = "${sortprice1==null and sortprice2==null and sortname1==null and sortname2==null}">
                                        <a class="page-link" href="shop?index=${indexPage+1}" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </c:if>

                                    <c:if test = "${sortprice1 == 1}">
                                        <a class="page-link" href="shop?index=${indexPage+1}&sortprice1=1" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </c:if>

                                    <c:if test = "${sortprice2 == 2}">
                                        <a class="page-link" href="shop?index=${indexPage+1}&sortprice2=2" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </c:if>

                                    <c:if test = "${sortname1 == 1}">
                                        <a class="page-link" href="shop?index=${indexPage+1}&sortname1=1" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </c:if>

                                    <c:if test = "${sortname2 == 2}">
                                        <a class="page-link" href="shop?index=${indexPage+1}&sortname2=2" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </c:if>
                                </li>
                            </c:if>
                        </ul>
                    </nav>
                </div>
                <!-- end phân trang -->
            </div>
        </div>
        <!-- Shop Product End -->
    </div>
</div>
<!-- End Product Frame -->

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
<script type="text/javascript">    /*Dùng khi all còn đc chọn thì tất cả còn lại không đc chọn*/
function setCheck(obj){
    var fries = document.getElementsByName('cidd');
    if((obj.id==='c0') && (fries[0].checked===true))
    {
        for(var i=1;i<fries.length;i++)
            fries[i].checked=false;
    }else{
        for(var i=1;i<fries.length;i++) {
            if (fries[i].checked == true) {
                fries[0].checked = false;
                break;
            }
        }
    }
    document.getElementById('f1').submit();
}
function setCheck1(obj){
    var fries = document.getElementsByName('price');
    if((obj.id==='g0') && (fries[0].checked===true))
    {
        for(var i=1;i<fries.length;i++)
            fries[i].checked=false;
    }else {
        for (var i = 1; i < fries.length; i++) {
            if (fries[i].checked == true) {
                fries[0].checked = false;
                break;
            }
        }
    }
    document.getElementById('f2').submit();
}
</script>
</body>
</html>