<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/view/admin/header/action-header.jsp"></jsp:include>
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

		<div class="container add">
		    <form action="" method="post">
			<input type="hidden" name="command" value="ADD" />
			<table>
			    <tbody>
				<tr>
				    <td><label>Camera selfie:</label></td>
				    <td>
					<input
					    type="text"
					    name="cameraSelfie"
					    placeholder="Camera selfie"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>Camera sau:</label></td>
				    <td>
					<input
					    type="text"
					    name="cameraSau"
					    placeholder="Camera sau"
					    />
				    </td>
				</tr>

				<tr>
				    <td><label>Rom:</label></td>
				    <td>
					<input
					    type="text"
					    name="rom"
					    placeholder="Rom"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>Ram:</label></td>
				    <td>
					<input type="text" name="ram" placeholder="Ram" />
				    </td>
				</tr>
				<tr>
				    <td><label>Cell:</label></td>
				    <td>
					<input type="text" name="cell" placeholder="Cell" />
				    </td>
				</tr>
				<tr>
				    <td><label>Cpu:</label></td>
				    <td>
					<input type="text" name="cpu" placeholder="Cpu" />
				    </td>
				</tr>
				<tr>
				    <td><label>Màn hình: </label></td>
				    <td>
					<input
					    type="text"
					    name="manhinh"
					    placeholder="Màn hình"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>OS:</label></td>
				    <td>
					<input
					    type="text"
					    name="os"
					    placeholder="OS"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>Thẻ nhớ:</label></td>
				    <td>
					<input
					    type="text"
					    name="derivation"
					    placeholder="Thẻ nhớ"
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
		    <p><a href="admin-info">Back to List</a></p>
		</div>
	    </div>
	</main>
    <jsp:include page="/view/admin/footer/admin-footer.jsp"></jsp:include>
