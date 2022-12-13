<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
	<meta charset="utf-8" />
	<title>ADMIN - UTE SHOP</title>
	<link href="${pageContext.request.contextPath}/view/admin/css/styles.css" rel="stylesheet" type="text/css"/>
	<script
	    src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	    crossorigin="anonymous"
	></script>
	<link
	    rel="icon"
	    type="image/x-icon"
	    href="https://upload.wikimedia.org/wikipedia/commons/1/19/Logo-ute_%282%29.png"
	    />
	<link
	    href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	    rel="stylesheet"
	    />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/css/admin.css" type="text/css"/>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/view/admin/css/action.css" type="text/css"/>
    </head>
    <body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	    <!-- Navbar Brand-->
	    <a class="navbar-brand ps-3" href="${pageContext.request.contextPath}/admin-home">UTE SHOP</a>
	    <!-- Sidebar Toggle-->
	    <button
		class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
		id="sidebarToggle"
		href="#!"
		>
		<i class="fas fa-bars"></i>
	    </button>
	    <!-- Navbar Search-->
	    <form
		class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0"
		></form>
	    <!-- Navbar-->
	    <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
		<li class="nav-item dropdown" style="display: flex">
		    <p class="nav-link">ADMIN</p>
		    <a
			class="nav-link dropdown-toggle"
			id="navbarDropdown"
			href="#"
			role="button"
			data-bs-toggle="dropdown"
			aria-expanded="false"
			><i class="fas fa-user fa-fw"></i
			></a>
		    <ul
			class="dropdown-menu dropdown-menu-end"
			aria-labelledby="navbarDropdown"
			>
			<li><a class="dropdown-item" href="home">Logout</a></li>
		    </ul>
		</li>
	    </ul>
	</nav>
	<div id="layoutSidenav">
	    <div id="layoutSidenav_nav">
		<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		    <div class="sb-sidenav-menu">
			<div class="nav">
			    <div class="sb-sidenav-menu-heading">core</div>
			    <a class="nav-link" href="admin-home">
				<div class="sb-nav-link-icon">
				    <i class="fas fa-tachometer-alt"></i>
				</div>
				Dashboard
			    </a>
			    <a class="nav-link" href="admin-product">
				<div class="sb-nav-link-icon">
				    <i class="fas fa-sharp fa-solid fa-table-list"></i>
				</div>
				Procducts
			    </a>
			    <a class="nav-link" href="${pageContext.request.contextPath}/admin-user">
				<div class="sb-nav-link-icon">
				    <i class="fas fa-sharp fa-solid fa-user"></i>
				</div>
				Users
			    </a>
			    <a class="nav-link" href="${pageContext.request.contextPath}/admin-category">
				<div class="sb-nav-link-icon">
				    <i class="fa fa-sharp fa-solid fa-bars"></i>
				</div>
				Category
			    </a>
			    <a class="nav-link" href="${pageContext.request.contextPath}/admin-order">
				<div class="sb-nav-link-icon">
				    <i class="fa fa-sharp fa-solid fa-chart-simple"></i>
				</div>
				Orders
			    </a>
			    <a class="nav-link" href="${pageContext.request.contextPath}/admin-order-detail">
				<div class="sb-nav-link-icon">
				    <i class="fa fa-sharp fa-solid fa-chart-column"></i>
				</div>
				Order Details
			    </a>
			    <a class="nav-link" href="${pageContext.request.contextPath}/admin-info">
				<div class="sb-nav-link-icon">
				    <i class="fa fa-sharp fa-solid fa-circle-info"></i>
				</div>
				Information Products
			    </a>
			    <a class="nav-link" href="${pageContext.request.contextPath}/admin-brand">
				<div class="sb-nav-link-icon">
				    <i class="fa fa-sharp fa-solid fa-mobile"></i>
				</div>
				Brand
			    </a>
			    <a class="nav-link" href="${pageContext.request.contextPath}/admin-role">
				<div class="sb-nav-link-icon">
				    <i class="fa fa-sharp fa-solid fa-mobile"></i>
				</div>
				Role
			    </a>
			</div>
		    </div>
		    <div class="sb-sidenav-footer">
			<div class="small">Logged in as:</div>
			UTE SHOP
		    </div>
		</nav>
	    </div>