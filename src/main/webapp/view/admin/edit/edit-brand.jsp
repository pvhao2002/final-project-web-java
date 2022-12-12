<jsp:include page="/view/admin/header/action-header.jsp"></jsp:include>
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

		<div class="container add">
		    <form action="admin-edit-brand" method="post">
			<input type="hidden" name="command" value="EDIT" />
			<input type="hidden" name="brandID" value = ${item.brandId}>
			<table>
			    <tbody>
				<tr>
				    <td><label>Brand name:</label></td>
				    <td>
					<input
					    type="text"
					    name="brandName"
					    placeholder="Brand name"
					    value="${item.brandName}"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>Logo:</label></td>
				    <td><input type="text" name="logo" placeholder="Link image logo" value="${item.logo}"></td>
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
		    <p><a href="${pageContext.request.contextPath}/admin-brand">Back to List</a></p>
		</div>
	    </div>
	</main>
    <jsp:include page="/view/admin/footer/admin-footer.jsp"></jsp:include>
