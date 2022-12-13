<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<jsp:include page="header/admin-header.jsp"></jsp:include>
    <div id="layoutSidenav_content">
	<main>
	    <div class="container-fluid px-4">
		<h1 class="mt-4">Dashboard</h1>
		<ol class="breadcrumb mb-4">
		    <li class="breadcrumb-item active">Dashboard</li>
		    <li class="breadcrumb-item active">Information product</li>
		</ol>
		<hr />
		<div class="card mb-4">
		    <div class="card-header"></div>
		</div>
		<a href="admin-add-info">Add</a>
		<table border="1">
		    <tr>
			<th>ID</th>
			<th>Camera selfie</th>
			<th>Camera sau</th>
			<th>Rom</th>
			<th>Ram</th>
			<th>Cell</th>
			<th>CPU</th>
			<th>Màn hình</th>
			<th>OS</th>
			<th>Thẻ nhớ</th>
			<th>Action</th>
		    </tr>

		<c:forEach var="item" items="${list}">
		    <!-- set up a link for each student -->
		    <c:url var="tempLink" value="admin-edit-info">
			<c:param name="command" value="LOAD" />
			<c:param name="id" value="${item.infoId}" />
		    </c:url>
		    <!-- set up a link for each student -->
		    <c:url var="deleteLink" value="admin-delete-info">
			<c:param name="command" value="DELETE" />
			<c:param name="id" value="${item.infoId}" />
		    </c:url>
		    <tr>
			<td>${item.infoId}</td>
			<td>${item.cameraSelfie}</td>
			<td>${item.cameraSau}</td>
			<td>${item.rom}</td>
			<td>${item.ram}</td>
			<td>${item.cell}</td>
			<td>${item.cpu}</td>
			<td>${item.manhinh}</td>
			<td>${item.os}</td>
			<td>${item.thenho}</td>
			<td>
			    <a href="${tempLink}">Update</a> |
			    <a
				href="${deleteLink}"
				onclick="if (!(confirm('Are you sure you want to delete this information?')))
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