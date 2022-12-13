<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/view/admin/header/action-header.jsp"></jsp:include>
    <div id="layoutSidenav_content">
	<main>
	    <div class="container-fluid px-4">
		<h1 class="mt-4">Dashboard</h1>
		<ol class="breadcrumb mb-4">
		    <li class="breadcrumb-item active">Dashboard</li>
		    <li class="breadcrumb-item active">Product</li>
		</ol>
		<hr />
		<div class="card mb-4">
		    <div class="card-header"></div>
		</div>

		<div class="container add">
		    <form action="/admin-edit-product" method="post">
			<input type="hidden" name="command" value="EDIT" />
			<input type="hidden" name="id" value="${item.productId}">
			<table>
			    <tbody>
				<tr>
				    <td><label>Product Name:</label></td>
				    <td>
					<input
					    type="text"
					    name="productName"
					    placeholder="Product Name"
					    value="${item.productName}"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>Link image:</label></td>
				    <td>
					<input
					    type="text"
					    name="image"
					    placeholder="Link image"
					    value="${item.image}"
					    />
				    </td>
				</tr>

				<tr>
				    <td><label>Decription Product:</label></td>
				    <td>
					<input
					    type="text"
					    name="description"
					    placeholder="Decription Product"
					    value="${item.description}"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>Price:</label></td>
				    <td>
					<input type="text" name="price" placeholder="Price" 
					       value="${item.price}"/>
				</td>
			    </tr>
			    <tr>
				<td><label>Release Date:</label></td>
				<td>
				    <input type="date" name="releaseDate" placeholder="Release Date" 
					   value="${item.releaseDate}"/>
				</td>
			    </tr>
			    <tr>
				<td><label>Category ID:</label></td>
				<td>
				    <select name="categoryId">
					<c:forEach var="cate" items="${listCate}">
					    <option value="${cate.categoryId}">${cate.categoryName}</option>
					</c:forEach>
				    </select>
				</td>
			    </tr>
			    <tr>
				<td><label>Brand ID:</label></td>
				<td>
				    <select name="brandId">
					<c:forEach var="bra" items="${listBrand}">
					    <option value="${bra.brandId}">${bra.brandName}</option>
					</c:forEach>
				    </select>
				</td>
			    </tr>
			    <tr>
				<td><label>Infomation Product ID:</label></td>
				<td>
				    <select name="infoId">
					<c:forEach var="info" items="${listInfo}">
					    <option value="${info.infoId}">${info.infoId}</option>
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
		<p><a href="admin-product">Back to List</a></p>
	    </div>
	</div>
    </main>
    <jsp:include page="/view/admin/footer/admin-footer.jsp"></jsp:include>
