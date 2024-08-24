<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String loggedInUser = (String) session.getAttribute("username");
String userRole = (String) session.getAttribute("role");

if (loggedInUser == null || !"warehouse".equals(userRole)) {
	response.sendRedirect(request.getContextPath() + "/login");
	return;
}
%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


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
			<div class="container mt-4">

				<!-- Product Table -->
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Description</th>
							<th>Price</th>
							<th>Quantity</th>
							<th>Branch</th>
							<th>Category</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${products}">
							<tr>
								<td>${product.productId}</td>
								<td>${product.productName}</td>
								<td>${product.description}</td>
								<td>${product.price}</td>
								<td>${product.quantityInStock}</td>
								<td>${product.branchId}</td>
								<td>${product.categoryId}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>


		<div id="manage-section" class="content-section"
			style="display: none;">
			<h2>Manage Products</h2>

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
							<!-- Ensure these values correspond to branch_id in the database -->
						</select>
					</div>
				</div>
				<div class="row mb-3">
					<div class="col-md-6">
						<label for="category" class="form-label">Category</label> <select
							id="category" name="category" class="form-select" required>
							<!-- Example options (replace with dynamic content) -->
							<option value="1">Laptops</option>
							<option value="2">Airpods</option>
							<!-- Add more categories as needed -->
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
				<button type="submit" class="btn btn-success">Restock</button>
			</form>
		</div>



		<div id="disburse-section" class="content-section"
			style="display: none;">
			<h2>Disburse Products</h2>

		</div>

	</section>

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