<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<header class="header shop">
    <!-- Topbar -->
    <div class="topbar">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-12 col-12">
                    <!-- Top Left -->
                    <div class="top-left">
                        <ul class="list-main">
                            <li><i class="ti-headphone-alt"></i> 0337981963</li>
                            <li><i class="ti-email"></i> 20110595@hcmute.edu.vn</li>
                        </ul>
                    </div>
                    <!--/ End Top Left -->
                </div>
                <div class="col-lg-7 col-md-12 col-12">
                    <!-- Top Right -->
                    <div class="right-content">
                        <ul class="list-main">
                            <li><i class="fas fa-info-circle"></i> <a href="introduce.jsp">Giới thiệu</a></li>
                            <li><i class="fas fa-handshake"></i> <a href="recruit.jsp">Tuyển dụng</a></li>
                            <c:if test = "${sessionScope.account.roleid.roleId == 0}">
                                <li><i class="ti-user"></i> <a href="admin-home">Quản trị</a></li>
                            </c:if>
                            <c:if test = "${sessionScope.account != null}">
                                <li><i class="fas fa-sign-out-alt"></i><a href="logout">Đăng xuất</a></li>
                            </c:if>
                        </ul>
                    </div>
                    <!-- End Top Right -->
                </div>
            </div>
        </div>
    </div>
    <!-- End Topbar -->

    <div class="middle-inner">
        <div class="container">
            <div class="row">
                <div class="col-lg-2 col-md-2 col-12">
                    <!-- Logo -->
                    <div class="logo">
                        <a href="home" class="logo-text">
                            <img src="images/logo.png">
                        </a>
                    </div>
                    <!--/ End Logo -->
                    <div class="mobile-nav"></div>
                </div>
                <div class="col-lg-8 col-md-7 col-12">
                    <div class="search-bar-top">
                        <div class="search-bar">
                            <form action="shop" method="post">
                                <input name="search" placeholder="Bạn tìm gì....." type="text">
                                <button class="btnn" onclick="this.form.submit()">
                                    <i class="ti-search"></i>
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-12">
                    <div class="right-bar jcontent-space-between" style="width:280px">
                        <c:if test = "${sessionScope.account != null}">
                            <a href="customer" class="sinlge-bar flex">
                                <i class="fa fa-user-circle-o" style="font-size:24px;"></i>
                                <p class="single-content">${sessionScope.account.fullName}</p>
                            </a>
                        </c:if>

                        <c:if test = "${sessionScope.account == null}">
                            <a href="login" class="sinlge-bar flex">
                                <i class="fa fa-user-circle-o" style="font-size:24px;"></i>
                                <p class="single-content">Tài Khoản</p>
                            </a>
                        </c:if>
                        <a href="#" class="sinlge-bar shopping flex">
                            <i class="fa fa-shopping-cart" style="font-size:24px;color:#f6931d;"> <span class="total-count">2</span></i>
                            <p class="single-content">Giỏ Hàng</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header Inner -->
    <div class="header-inner">
        <div class="container">
            <div class="cat-nav-head">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="all-category">
                            <h3 class="cat-heading"><i class="fa fa-bars" aria-hidden="true"></i>DANH MỤC SẢN PHẨM</h3>
                            <ul class="main-category">
                                <c:forEach items="${data}" var="o">
                                    <li><a href="shop?cid=${o.categoryId}">${o.categoryName}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-9 col-12">
                        <div class="menu-area">
                            <!-- Main Menu -->
                            <nav class="navbar navbar-expand-lg">
                                <div class="navbar-collapse">
                                    <div class="nav-inner">
                                        <ul class="nav main-menu menu navbar-nav">
                                            <li><a href="home">Trang chủ</a></li>
                                            <li><a href="shop">Cửa hàng</a></li>
                                            <li><a href="shopDetail">Chi tiết sản phẩm</a></li>
                                            <li><a href="#">Trang<i class="ti-angle-down"></i></a>
                                                <ul class="dropdown">
                                                    <li><a href="cart.html">Giỏ hàng</a></li>
                                                    <li><a href="checkout.html">Thanh toán</a></li>
                                                </ul>
                                            </li>
                                            <li><a href="contact">Liên hệ</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <!--/ End Main Menu -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--/ End Header Inner -->
</header>

