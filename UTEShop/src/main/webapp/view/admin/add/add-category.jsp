<jsp:include page="/view/admin/header/action-header.jsp"></jsp:include>
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

		<div class="container add">
		    <form action="" method="post">
			<input type="hidden" name="command" value="ADD" />
			<table>
			    <tbody>
				
				<tr>
				    <td><label>Category Name:</label></td>
				    <td>
					<input
					    type="text"
					    name="categoryName"
					    placeholder="Category Name"
					    />
				    </td>
				</tr>
				
				<tr>
				    <td><label></label></td>
				    <td>
					<input type="submit" value="Add" class="save" />
				    </td>
				</tr>
			    </tbody>
			</table>
		    </form>
		    <div style="clear: both"></div>
		    <p><a href="${pageContext.request.contextPath}/admin-category">Back to List</a></p>
		</div>
	    </div>
	</main>
    <jsp:include page="/view/admin/footer/admin-footer.jsp"></jsp:include>
