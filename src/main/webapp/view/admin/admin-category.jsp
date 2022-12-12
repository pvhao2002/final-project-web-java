<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="header/admin-header.jsp"></jsp:include>
    <div id="layoutSidenav_content">
	<main>
	    <div class="container-fluid px-4">
		<h1 class="mt-4">Dashboard</h1>
		<ol class="breadcrumb mb-4">
		    <li class="breadcrumb-item active">Dashboard</li>
		    <li class="breadcrumb-item active">Category</li>
		</ol>
		<hr />
		<div class="card mb-4">
		    <div class="card-header"></div>
		</div>
		<a href="admin-add-category">Add</a>
		<table border="1">
		    <tr>
			<th>ID</th>
			<th>Category Name</th>
			<th>Action</th>
		    </tr>
		<c:forEach var="item" items="${list}">
		    <!-- set up a link for each student -->
		    <c:url var="tempLink" value="admin-edit-category">
			<c:param name="command" value="LOAD" />
			<c:param name="id" value="${item.categoryId}" />
		    </c:url>
		    <!-- set up a link for each student -->
		    <c:url var="deleteLink" value="admin-delete-category">
			<c:param name="command" value="DELETE" />
			<c:param name="id" value="${item.categoryId}" />
		    </c:url>
		    <tr>
			<td>${item.categoryId}</td>
			<td>${item.categoryName}</td>
			<td>    
			    <a href="${tempLink}">Update</a> |
			    <a
				href="${deleteLink}"
				onclick="if (!(confirm('Are you sure you want to delete this category?')))
					    return false"
				>Delete</a
			    >
			</td>
		    </tr>
		</c:forEach>

	    </table>
	</div>
    </main>
    <jsp:include page="footer/admin-footer.jsp"></jsp:include>