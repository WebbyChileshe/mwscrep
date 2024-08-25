
<%-- <%
String loggedInUser = (String) session.getAttribute("username");
String userRole = (String) session.getAttribute("role");

if (loggedInUser == null || !"warehouse".equals(userRole)) {
	response.sendRedirect(request.getContextPath() + "/login");
	return;
}
%>
 --%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page import="com.harmtedyshop.model.Product"%>
<%@ page import="com.harmtedyshop.dao.admin.ProductDAO"%>
<%@ page import="java.util.List"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin| ManageWareouseProducts</title>


<!-- jquery -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

<!-- fonts icons start-->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons" />
<script src="https://kit.fontawesome.com/018d9ba538.js"
	crossorigin="anonymous"></script>


<!-- fonts  end-->

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Open+Sans:400,450,500,520,550,600,700,900,1000">


<!-- bootrsap cdn css link -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/insideheader.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/dashboard.css">



<!-- styles end -->
<!-- jQuery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<style>
.gadgets_div, .modal {
	display: none;
}

section {
	max-width: 1250px;
	margin: 0 auto;
	margin-top: 50px;
	padding: 0 10px;
}

/* Add this custom CSS to your stylesheet */

/* Add this custom CSS to your stylesheet */
.table-responsive {
	max-height: 400px; /* Adjust the height as necessary */
	overflow-y: auto; /* Enable vertical scrolling */
	overflow-x: auto; /* Enable horizontal scrolling */
}

.table thead th {
	position: sticky;
	top: 0;
	background-color: #343a40; /* Match the header background color */
	color: #fff; /* Match the header text color */
}

.table {
	table-layout: auto;
	/* Allows the table to adjust its layout based on content */
	width: 100%;
}

/* Ensure responsiveness on smaller screens */
@media ( max-width : 768px) {
	.table-responsive {
		max-height: 300px; /* Adjust height for smaller screens */
	}
}

/* Style for the form section */
#restock-section {
	background-color: #f8f9fa; /* Light background for contrast */
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	/* Subtle shadow for depth */
	margin-top: 20px;
}

#restock-section .form-label {
	font-weight: bold;
	color: #343a40; /* Darker color for labels */
}

#restock-section .form-control, #restock-section .form-select {
	border-radius: 5px;
	box-shadow: none; /* Remove default input shadow */
	transition: border-color 0.3s ease;
	/* Smooth transition for focus state */
}

#restock-section .form-control:focus, #restock-section .form-select:focus
	{
	border-color: #28a745; /* Success color for focus */
	box-shadow: 0px 0px 5px rgba(40, 167, 69, 0.5);
	/* Slight glow effect */
}

#restock-section .btn-success {
	background-color: #28a745;
	border: none;
	font-size: 1.1rem; /* Slightly larger button text */
	padding: 10px 15px;
	transition: background-color 0.3s ease, box-shadow 0.3s ease;
	/* Smooth hover effects */
}

#restock-section .btn-success:hover {
	background-color: #218838; /* Darker green on hover */
	box-shadow: 0px 0px 10px rgba(33, 136, 56, 0.5);
	/* More prominent shadow on hover */
}

@media ( max-width : 768px) {
	/* Adjust form padding for smaller screens */
	#restock-section {
		padding: 15px;
	}
}

/* Manage Products Section */
#manage-section {
	padding: 20px;
	background-color: #f8f9fa;
	border-radius: 8px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	margin-top: 20px;
}

#manage-section h2 {
	color: #343a40;
	font-weight: bold;
}

#manage-section .table-responsive {
	margin-top: 20px;
}

#manage-section .table thead th {
	background-color: #343a40;
	color: #fff;
}

#manage-section .table tbody tr:hover {
	background-color: #e9ecef;
}

#manage-section .table .edit-btn {
	background-color: #007bff;
	border: none;
}

#manage-section .table .edit-btn:hover {
	background-color: #0056b3;
}

#manage-section .table .delete-btn {
	background-color: #dc3545;
	border: none;
}

#manage-section .table .delete-btn:hover {
	background-color: #c82333;
}

/* Modal Styling */
#editProductModal .modal-content {
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

#editProductModal .modal-title {
	font-weight: bold;
	color: #343a40;
}

#editProductModal .form-control, #editProductModal .form-select {
	border-radius: 5px;
	transition: border-color 0.3s ease;
}

#editProductModal .form-control:focus, #editProductModal .form-select:focus
	{
	border-color: #28a745;
	box-shadow: 0px 0px 5px rgba(40, 167, 69, 0.5);
}

#editProductModal .btn-success {
	background-color: #28a745;
	border: none;
	transition: background-color 0.3s ease, box-shadow 0.3s ease;
}

#editProductModal .btn-success:hover {
	background-color: #218838;
	box-shadow: 0px 0px 10px rgba(33, 136, 56, 0.5);
}
</style>

<body>



	<!-- header -->

	<div class="container-fluid p-0 header">
		<!-- Full-width background section -->
		<div class="full-width-bg bg-body-tertiary">
			<div class="container-fluid">
				<div class="row align-items-start content_holder">
					<div class="col-12">
						<!-- contacts -->
						<div class="row top_header_container">
							<nav class="navbar navbar-expand-lg">
								<div class="container-fluid navbar_holder_one">
									<div class="branding">
										<a class="navbar-brand company_name"
											href="${pageContext.request.contextPath}/warehouse">Harmtedy
											Investments</a> <a class="navbar-brand username" href="#"> <i
											class="fa-solid fa-user"></i> <span id="username">micheal
												sinkamba</span></a>
									</div>

									<!-- warehouse -->


									<div class="log_in_log_out_btns">
										<a class="btn text-light visit_site"
											href="${pageContext.request.contextPath}/home"
											target="_blank" role="button">Visit Site</a> <a
											class="btn logout bg-danger text-light"
											href="${pageContext.request.contextPath}/logout"
											role="button">Logout</a>
									</div>
								</div>
							</nav>
						</div>
						<!-- contacts end -->
					</div>
				</div>
			</div>
		</div>

		<!-- Navbar Section -->
		<div class="col-12 p-0 navbar_holder">
			<nav class="navbar navbar-expand-md">
				<div class="container-fluid whole_holder_navbar">
					<a href="" class="tittle d-none d-md-block">WAREHOUSE PRODUCTS</a>
					<!-- Navbar Toggler Button -->
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<!-- Form Outside the Collapsible Navbar -->
					<div class="d-flex d-md-none order-lg-1 ms-auto" role="search">
						<a href="" class="locate_store tittle d-block d-md-none">WAREHOUSE
							PRODUCTS</a>
					</div>

					<!-- Collapsible Navbar Content -->
					<div class="collapse navbar-collapse order-lg-0"
						id="navbarSupportedContent">
						<ul class="navbar-nav mx-left mx-md-auto mb-2 mb-lg-0">
							<li class="nav-item"><a class="nav-link activelink"
								aria-current="page" href="#" data-target="view-section"><i
									class="fas fa-eye"></i> View</a></li>
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="#" data-target="restock-section"><i
									class="fas fa-sync-alt"></i> Restock</a></li>
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="#" data-target="manage-section"><i class="fas fa-cogs"></i>
									Manage</a></li>
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="#" data-target="disburse-section"><i
									class="fas fa-hand-holding-usd"></i> Disburse</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>

	</div>

	<!-- body starts -->



	<section>


		<div id="view-section" class="content-section">
			<!-- Display Error Message -->
			<c:if test="${not empty errorMessage}">
				<div class="alert alert-danger">
					<c:out value="${errorMessage}" />
				</div>
			</c:if>

			<div class="container mt-4">

				<!-- Warehouse Products Table -->
				<h2 class="mb-3">Warehouse Products</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-hover table-striped">
						<thead class="thead-dark">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Category</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<c:if test="${product.branchName == 'warehouse'}">
									<tr>
										<td><c:out value="${product.productId}" /></td>
										<td><c:out value="${product.productName}" /></td>
										<td><c:out value="${product.description}" /></td>
										<td><c:out value="${product.price}" /></td>
										<td><c:out value="${product.quantityInStock}" /></td>
										<td><c:out value="${product.categoryName}" /></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<!-- CBU Branch Products Table -->
				<h2 class="mt-5 mb-3">CBU Branch Products</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-hover table-striped">
						<thead class="thead-dark">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Category</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<c:if test="${product.branchName == 'cbu_branch'}">
									<tr>
										<td><c:out value="${product.productId}" /></td>
										<td><c:out value="${product.productName}" /></td>
										<td><c:out value="${product.description}" /></td>
										<td><c:out value="${product.price}" /></td>
										<td><c:out value="${product.quantityInStock}" /></td>
										<td><c:out value="${product.categoryName}" /></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<!-- MU Branch Products Table -->
				<h2 class="mt-5 mb-3">MU Branch Products</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-hover table-striped">
						<thead class="thead-dark">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Category</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<c:if test="${product.branchName == 'mu_branch'}">
									<tr>
										<td><c:out value="${product.productId}" /></td>
										<td><c:out value="${product.productName}" /></td>
										<td><c:out value="${product.description}" /></td>
										<td><c:out value="${product.price}" /></td>
										<td><c:out value="${product.quantityInStock}" /></td>
										<td><c:out value="${product.categoryName}" /></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<!-- Iringa Branch Products Table -->
				<h2 class="mt-5 mb-3">Iringa Branch Products</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-hover table-striped">
						<thead class="thead-dark">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Category</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<c:if test="${product.branchName == 'iringa_branch'}">
									<tr>
										<td><c:out value="${product.productId}" /></td>
										<td><c:out value="${product.productName}" /></td>
										<td><c:out value="${product.description}" /></td>
										<td><c:out value="${product.price}" /></td>
										<td><c:out value="${product.quantityInStock}" /></td>
										<td><c:out value="${product.categoryName}" /></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>




		<div id="manage-section" class="content-section"
			style="display: none;">
			<!-- Display Error Message -->
			<c:if test="${not empty errorMessage}">
				<div class="alert alert-danger">
					<c:out value="${errorMessage}" />
				</div>
			</c:if>

			<div class="container mt-4">

				<!-- Warehouse Products Table -->
				<h2 class="mb-3">Warehouse Products</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-hover table-striped">
						<thead class="thead-dark">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Category</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<c:if test="${product.branchName == 'warehouse'}">
									<tr>
										<td><c:out value="${product.productId}" /></td>
										<td><c:out value="${product.productName}" /></td>
										<td><c:out value="${product.description}" /></td>
										<td><c:out value="${product.price}" /></td>
										<td><c:out value="${product.quantityInStock}" /></td>
										<td><c:out value="${product.categoryName}" /></td>
										<td><a
											href="${pageContext.request.contextPath}/editproduct?id=${product.productId}"
											class="btn btn-primary btn-sm">Edit</a>
											<button class="btn btn-danger btn-sm delete-btn"
												data-id="${product.productId}">Delete</button></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<!-- Warehouse Products Table -->
				<h2 class="mb-3">CBU Products</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-hover table-striped">
						<thead class="thead-dark">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Category</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<c:if test="${product.branchName == 'cbu_branch'}">
									<tr>
										<td><c:out value="${product.productId}" /></td>
										<td><c:out value="${product.productName}" /></td>
										<td><c:out value="${product.description}" /></td>
										<td><c:out value="${product.price}" /></td>
										<td><c:out value="${product.quantityInStock}" /></td>
										<td><c:out value="${product.categoryName}" /></td>
										<td><a
											href="${pageContext.request.contextPath}/editproduct?id=${product.productId}"
											class="btn btn-primary btn-sm">Edit</a>
											<button class="btn btn-danger btn-sm delete-btn"
												data-id="${product.productId}">Delete</button></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>


				<!-- Warehouse Products Table -->
				<h2 class="mb-3">Iringa Products</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-hover table-striped">
						<thead class="thead-dark">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Category</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<c:if test="${product.branchName == 'iringa_branch'}">
									<tr>
										<td><c:out value="${product.productId}" /></td>
										<td><c:out value="${product.productName}" /></td>
										<td><c:out value="${product.description}" /></td>
										<td><c:out value="${product.price}" /></td>
										<td><c:out value="${product.quantityInStock}" /></td>
										<td><c:out value="${product.categoryName}" /></td>
										<td><a
											href="${pageContext.request.contextPath}/editproduct?id=${product.productId}"
											class="btn btn-primary btn-sm">Edit</a>
											<button class="btn btn-danger btn-sm delete-btn"
												data-id="${product.productId}">Delete</button></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>



				<!-- Warehouse Products Table -->
				<h2 class="mb-3">Mu Products</h2>
				<div class="table-responsive">
					<table class="table table-bordered table-hover table-striped">
						<thead class="thead-dark">
							<tr>
								<th>ID</th>
								<th>Name</th>
								<th>Description</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Category</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="product" items="${products}">
								<c:if test="${product.branchName == 'mu_branch'}">
									<tr>
										<td><c:out value="${product.productId}" /></td>
										<td><c:out value="${product.productName}" /></td>
										<td><c:out value="${product.description}" /></td>
										<td><c:out value="${product.price}" /></td>
										<td><c:out value="${product.quantityInStock}" /></td>
										<td><c:out value="${product.categoryName}" /></td>
										<td><a
											href="${pageContext.request.contextPath}/editproduct?id=${product.productId}"
											class="btn btn-primary btn-sm">Edit</a>
											<button class="btn btn-danger btn-sm delete-btn"
												data-id="${product.productId}">Delete</button></td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>

				<!-- Repeat similar structure for other branches (CBU, MU, Iringa) with the same Edit and Delete buttons -->

			</div>


		</div>


		<div id="restock-section" class="content-section"
			style="display: none;">
			<form action="restock" method="post">
				<div class="row mb-3">
					<div class="col-md-6">
						<label for="branch" class="form-label">Branch</label> <select
							id="branch" name="branch" class="form-select" required>
							<option value="1">mu_branch</option>
							<option value="2">cbu_branch</option>
							<option value="3">iringa_branch</option>
							<option value="4">warehouse</option>
						</select>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-6">
						<label for="category" class="form-label">Category</label> <select
							id="category" name="category" class="form-select" required>
							<option value="1">Laptops</option>
							<option value="2">Airpods</option>
						</select>
					</div>
					<div class="col-md-6">
						<label for="product_name" class="form-label">Product Name</label>
						<input type="text" id="product_name" name="product_name"
							class="form-control" required>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-4">
						<label for="model_serial_number" class="form-label">Model/Serial
							Number</label> <input type="text" id="model_serial_number"
							name="model_serial_number" class="form-control" required>
					</div>
					<div class="col-md-4">
						<label for="price" class="form-label">Price</label> <input
							type="number" id="price" name="price" class="form-control"
							required step="0.01">
					</div>
					<div class="col-md-4">
						<label for="quantity" class="form-label">Quantity</label> <input
							type="number" id="quantity" name="quantity" class="form-control"
							required min="1">
					</div>
				</div>
				<div class="mb-3">
					<label for="description" class="form-label">Description</label>
					<textarea id="description" name="description" class="form-control"
						rows="3" required></textarea>
				</div>
				<button type="submit" class="btn btn-success w-100">Restock</button>
			</form>
		</div>



		<div id="disburse-section" class="content-section"
			style="display: none;">
			<h2>Disburse Products</h2>
        <form action="disburseproduct" method="post">
            <div>
                <label for="sourceBranch">Source Branch</label>
                <select id="sourceBranch" name="sourceBranchId" required>
                    <option value="">Select Source Branch</option>
                    <c:forEach var="branch" items="${branches}">
                        <option value="${branch.branchId}">${branch.branchName}</option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label for="targetBranch">Target Branch</label>
                <select id="targetBranch" name="targetBranchId" required>
                    <option value="">Select Target Branch</option>
                    <c:forEach var="branch" items="${branches}">
                        <option value="${branch.branchId}">${branch.branchName}</option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label for="product">Product</label>
                <select id="product" name="productId" required>
                    <option value="">Select Product</option>
                    <c:forEach var="product" items="${products}">
                        <option value="${product.productId}">${product.productName}</option>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label for="quantity">Quantity</label>
                <input type="number" id="quantity" name="quantity" required min="1">
            </div>
            <button type="submit">Disburse Product</button>
        </form>
			
			
			
					<!-- Products Table Section -->
		 <div>
        <h2>Filter Products by Branch</h2>
        <form action="warehouseproducts" method="get">
            <div>
                <label for="branchId">Select Branch</label>
                <select id="branchId" name="branchId">
                    <option value="">All Branches</option>
                    <c:forEach var="branch" items="${branches}">
                        <option value="${branch.branchId}" <c:if test="${branch.branchId == param.branchId}">selected</c:if>>
                            ${branch.branchName}
                        </option>
                    </c:forEach>
                </select>
                <button type="submit">Filter</button>
            </div>
        </form>
    </div>

    <!-- Products Table Section -->
    <div>
        <h2>Products</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Description</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Category</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td><c:out value="${product.productId}" /></td>
                        <td><c:out value="${product.productName}" /></td>
                        <td><c:out value="${product.description}" /></td>
                        <td><c:out value="${product.price}" /></td>
                        <td><c:out value="${product.quantityInStock}" /></td>
                        <td><c:out value="${product.categoryName}" /></td>
                        <td>
                            <!-- Edit Button -->
                            <a href="editProduct.jsp?id=${product.productId}" class="btn btn-primary">Edit</a>
                            <!-- Delete Button -->
                            <a href="deleteProduct?id=${product.productId}" class="btn btn-danger">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
		</div>


	

	</section>


	<script>
		// Assuming you have jQuery loaded
		$(document).ready(function() {
			// Handle delete button click
			$('.delete-btn').on('click', function() {
				var id = $(this).data('id');
				if (confirm('Are you sure you want to delete this product?')) {
					$.post('deleteProduct', {
						id : id
					}, function() {
						location.reload(); // Reload page after deletion
					});
				}
			});
		});
	</script>

	<!-- body starts -->

	<!-- boostrap cdn with poppper -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>

	<!-- jquery -->

	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<script src="${pageContext.request.contextPath}/js/products.js"></script>

	<!-- external js sheet -->
</body>

</html>