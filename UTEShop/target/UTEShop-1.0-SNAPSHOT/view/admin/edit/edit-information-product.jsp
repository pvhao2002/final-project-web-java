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
		    <li class="breadcrumb-item active">Information product</li>
		</ol>
		<hr />
		<div class="card mb-4">
		    <div class="card-header"></div>
		</div>

		<div class="container add">
		    <form action="admin-edit-info" method="post">
			<input type="hidden" name="command" value="EDIT" />
			<input type="hidden" name="id" value="${item.infoId}">
			<table>
			    <tbody>
				<tr>
				    <td><label>ID:</label></td>
				    <td>
					<input
					    type="text"
					    name="infoId"
					    placeholder="ID"
					    value="${item.infoId}"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>Camera selfie:</label></td>
				    <td>
					<input
					    type="text"
					    name="cameraSelfie"
					    placeholder="Camera selfie"
					    value="${item.cameraSelfie}"
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
					    value="${item.cameraSelfie}"
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
					    value="${item.rom}"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>Ram:</label></td>
				    <td>
					<input type="text" name="ram" placeholder="Ram"
					       value="${item.ram}"/>
				    </td>
				</tr>
				<tr>
				    <td><label>Cell:</label></td>
				    <td>
					<input type="text" name="cell" placeholder="Cell" 
					       value="${item.cell}"/>
				    </td>
				</tr>
				<tr>
				    <td><label>Cpu:</label></td>
				    <td>
					<input type="text" name="cpu" placeholder="Cpu"
					       value="${item.cpu}"/>
				    </td>
				</tr>
				<tr>
				    <td><label>Màn hình:</label></td>
				    <td>
					<input
					    type="text"
					    name="manhinh"
					    placeholder="Màn hinh"
					    value="${item.manhinh}"
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
					    value="${item.os}"
					    />
				    </td>
				</tr>
				<tr>
				    <td><label>Thẻ nhớ:</label></td>
				    <td>
					<input
					    type="text"
					    name="thenho"
					    placeholder="Thẻ nhớ"
					    value="${item.thenho}"
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
		    <p><a href="admin-info">Back to List</a></p>
		</div>
	    </div>
	</main>
    <jsp:include page="/view/admin/footer/admin-footer.jsp"></jsp:include>
