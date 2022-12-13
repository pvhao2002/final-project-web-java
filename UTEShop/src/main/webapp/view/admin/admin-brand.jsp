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
		    <li class="breadcrumb-item active">Brand</li>
		</ol>
		<hr />
		<div class="card mb-4">
		    <div class="card-header"></div>
		</div>
		<a href="${pageContext.request.contextPath}/admin-add-brand">Add</a>
		<table border="1">
		    <tr>
			<th>ID</th>
			<th>Brand name</th>
			<th>Logo</th>
			<th>Action</th>
		    </tr>
		<c:forEach var="b" items="${list}">

		    <!-- set up a link for each student -->
		    <c:url var="tempLink" value="admin-edit-brand">
			<c:param name="command" value="LOAD" />
			<c:param name="bId" value="${b.brandId}" />
		    </c:url>
		    <!-- set up a link for each student -->
		    <c:url var="deleteLink" value="admin-delete-brand">
			<c:param name="command" value="DELETE" />
			<c:param name="bId" value="${b.brandId}" />
		    </c:url>
		    
		    <tr>
			<td>${b.brandId}</td>
			<td>${b.brandName}</td>
			<td><img src="${b.logo}" alt="Image" width="80px" height="40px"/></td>
			<td>
			    <a href="${tempLink}">Update</a> |
			    <a
				href="${deleteLink}"
				onclick="if (!(confirm('Are you sure you want to delete this product?')))
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