<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="/view/admin/header/action-header.jsp"></jsp:include>
    <div id="layoutSidenav_content">
	<main>
	    <div class="container-fluid px-4">
		<h1 class="mt-4">Dashboard</h1>
		<ol class="breadcrumb mb-4">
		    <li class="breadcrumb-item active">Dashboard</li>
		    <li class="breadcrumb-item active">Order detail</li>
		</ol>
		<hr />
		<div class="card mb-4">
		    <div class="card-header"></div>
		</div>
		<div class="container add">
		    <form action="admin-edit-orderdetail" method="post">
			<input type="hidden" name="command" value="EDIT" />
			<input type="hidden" name="id" value="${item.oderDetailId}">
		    <table>
			<tbody>

			    <tr>
				<td><label>Product Id:</label></td>
				<td>
				    <select name="productId">
					<c:forEach var="u" items="${listProduct}">
					    <option value="${u.productId}" >${u.productName}</option>
					</c:forEach>
				    </select>
				</td>
			    </tr>
			    <tr>
				<td><label>Price:</label></td>
				<td>
				    <input
					type="text"
					name="price"
					placeholder="Price"
					value="${item.price}"
					/>
				</td>
			    </tr>
			    <tr>
				<td><label>Quantity:</label></td>
				<td>
				    <input
					type="text"
					name="quantity"
					placeholder="Quantity"
					value="${item.quantity}"
					/>
				</td>
			    </tr>
			    <tr>
				<td>Order Id:</td>
				<td>
				    <select name="orderId">
					<c:forEach var="u" items="${listOrder}">
					    <option value="${u.orderId}">${u.orderId}</option>
					</c:forEach>
				    </select>
				</td>
			    </tr>
			    <tr>
				<td><label></label></td>
				<td>
				    <input type="submit" value="Edit" class="save" />
				</td>
			    </tr>
			</tbody>
		    </table>
		</form>
		<div style="clear: both"></div>
		<p><a href="admin-order-detail">Back to List</a></p>
	    </div>
	</div>
    </main>
    <jsp:include page="/view/admin/footer/admin-footer.jsp"></jsp:include>
