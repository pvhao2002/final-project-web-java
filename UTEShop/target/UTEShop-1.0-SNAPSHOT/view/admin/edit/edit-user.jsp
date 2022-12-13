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
		    <li class="breadcrumb-item active">User</li>
		</ol>
		<hr />
		<div class="card mb-4">
		    <div class="card-header"></div>
		</div>
		<div class="container add">
		    <form action="admin-edit-user" method="post">
			<input type="hidden" name="command" value="EDIT" />
			<input type="hidden" name="id" value="${item.id}">
		    <table>
			<tbody>
			    <tr>
				<td><label>Password:</label></td>
				<td><input type="password" name="password" value="${item.password}"></td>
			    </tr>
			    <tr>
				<td><label>Full Name:</label></td>
				<td>
				    <input
					type="text"
					name="fullName"
					placeholder="Full Name"
					value="${item.fullName}"
					/>
				</td>
			    </tr>
			    <tr>
				<td><label>Email:</label></td>
				<td>
				    <input
					type="email"
					name="email"
					placeholder="Email"
					value="${item.email}"
					/>
				</td>
			    </tr>
			    <tr>
				<td><label>Phone Number:</label></td>
				<td>
				    <input
					type="text"
					name="phoneNumber"
					placeholder="Phone Number"
					value="${item.phoneNumber}"
					/>
				</td>
			    </tr>

			    <tr>
				<td><label>Address:</label></td>
				<td>
				    <input
					type="text"
					name="address"
					placeholder="Address"
					value="${item.address}"
					/>
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
		<p><a href="${pageContext.request.contextPath}/admin-user">Back to List</a></p>
	    </div>
	</div>
    </main>
    <jsp:include page="/view/admin/footer/admin-footer.jsp"></jsp:include>
