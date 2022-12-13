<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="header/admin-header.jsp"></jsp:include>
    <div id="layoutSidenav_content">
	<main>
	    <div class="container-fluid px-4">
		<h1 class="mt-4">Dashboard</h1>
		<ol class="breadcrumb mb-4">
		    <li class="breadcrumb-item active">Dashboard</li>
		</ol>
		<hr />
	    </div>
	    <div class="row" style="margin: 20px">
		<div class="col-xl-3 col-md-6">
		    <div class="card bg-primary text-white mb-4">
			<div class="card-body">Products</div>
			<div
			    class="card-footer d-flex align-items-center justify-content-between"
			    >
			    <div class="small text-white">Total number: ${countPro}</div>
			</div>
		    </div>
		</div>

		<div class="col-xl-3 col-md-6">
		    <div class="card bg-primary text-white mb-4">
			<div class="card-body">Users</div>
			<div
			    class="card-footer d-flex align-items-center justify-content-between"
			    >
			    <div class="small text-white">Total number: ${countUser}</div>
			</div>
		    </div>
		</div>

		<div class="col-xl-3 col-md-6">
		    <div class="card bg-primary text-white mb-4">
			<div class="card-body">Category</div>
			<div
			    class="card-footer d-flex align-items-center justify-content-between"
			    >
			    <div class="small text-white">Total number: ${countCate}</div>
			</div>
		    </div>
		</div>

		<div class="col-xl-3 col-md-6">
		    <div class="card bg-primary text-white mb-4">
			<div class="card-body">Orders</div>
			<div
			    class="card-footer d-flex align-items-center justify-content-between"
			    >
			    <div class="small text-white">Total number: ${countOrder}</div>
			</div>
		    </div>
		</div>

		<div class="col-xl-3 col-md-6">
		    <div class="card bg-primary text-white mb-4">
			<div class="card-body">Order Details</div>
			<div
			    class="card-footer d-flex align-items-center justify-content-between"
			    >
			    <div class="small text-white">Total number: ${countOrderDetail}</div>
			</div>
		    </div>
		</div>

		<div class="col-xl-3 col-md-6">
		    <div class="card bg-primary text-white mb-4">
			<div class="card-body">Information Products</div>
			<div
			    class="card-footer d-flex align-items-center justify-content-between"
			    >
			    <div class="small text-white">Total number: ${countInfo}</div>
			</div>
		    </div>
		</div>

		<div class="col-xl-3 col-md-6">
		    <div class="card bg-primary text-white mb-4">
			<div class="card-body">Brand</div>
			<div
			    class="card-footer d-flex align-items-center justify-content-between"
			    >
			    <div class="small text-white">Total number: ${countBrand}</div>
			</div>
		    </div>
		</div>
			<div class="col-xl-3 col-md-6">
				<div class="card bg-primary text-white mb-4">
					<div class="card-body">Role</div>
					<div
							class="card-footer d-flex align-items-center justify-content-between"
					>
						<div class="small text-white">Total number: ${countRole}</div>
					</div>
				</div>
			</div>
	    </div>
	</main>
    <jsp:include page="footer/admin-footer.jsp"></jsp:include>