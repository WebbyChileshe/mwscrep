

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String loggedInUser = (String) session.getAttribute("username");
String userRole = (String) session.getAttribute("role");

if (loggedInUser == null || !"cbu_branch".equals(userRole)) {
	response.sendRedirect(request.getContextPath() + "/login");
	return;
}
%>

<%
response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1
response.setHeader("Pragma", "no-cache"); // HTTP 1.0
response.setDateHeader("Expires", 0); // Proxies
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Harmtedy Investments| CBU Branch</title>


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
<!-- font awesome -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

<!-- bootrsap cdn css link -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">


<!-- styles start-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/branches.css">
<!-- styles end -->
<!-- jQuery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>


<header class="shadow">
	<nav class="navbar navbar-expand-lg">
		<div class="container-fluid navbar_holder">
			<div class="branding">
				<a class="navbar-brand company_name" href="#">Harmtedy
					Investments</a> <a class="navbar-brand username" href="#"> <i
					class="fa-solid fa-user"></i> <span id="username">micheal
						sinkamba</span></a>
			</div>


			<div class="log_in_log_out_btns">
				<a class="btn text-light visit_site"
					href="${pageContext.request.contextPath}/home" target="_blank"
					role="button">Visit Site</a> <a
					class="btn logout bg-danger text-light"
					href="${pageContext.request.contextPath}/logout" role="button">Logout</a>
			</div>
		</div>
	</nav>
</header>

<style>

    a {
        text-decoration: none !important;
    }
</style>

<body>


<section class="cards_holder">

	<div class="container-fluid content_holder">
		<h2 class="branch_name text-center mt-4">CBU BRANCH</h2>

		<div class="row mt-5 p-1">
			<div class="col-12 col-xl-3 col-md-4 col-sm-6 mb-4">
				<a href="${pageContext.request.contextPath}/branchsales">
					<div class="card h-100 py-4">
						<div class="card-body">
							<i class="fas fa-shopping-cart"></i> <span class="nav-link">SALES</span>
						</div>
					</div>
				</a>
			</div>

			<div class="col-12 col-xl-3 col-md-4 col-sm-6 mb-4">
				<a href="${pageContext.request.contextPath}/branchorders">
					<div class="card h-100 py-4">
						<div class="card-body">
							<i class="fas fa-store"></i> <span class="nav-link">MANAGE
								ORDERS</span>
						</div>
					</div>
				</a>
			</div>

			<div class="col-12 col-xl-3 col-md-4 col-sm-6 mb-4">
				<a href="${pageContext.request.contextPath}/branchproducts">
					<div class="card h-100 py-4">
						<div class="card-body">
							<i class="fas fa-warehouse"></i> <span class="nav-link">BRANCH
								PRODUCTS</span>
						</div>
					</div>
				</a>
			</div>

			<div class="col-12 col-xl-3 col-md-4 col-sm-6 mb-4">
				<a href="${pageContext.request.contextPath}/branchprofile">
					<div class="card h-100 py-4">
						<div class="card-body">
							<i class="fas fa-user-cog"></i> <span class="nav-link">BRANCH
								PROFILE</span>
						</div>
					</div>
				</a>
			</div>

			<div class="col-12 col-xl-3 col-md-4 col-sm-6 mb-4">
				<a href="${pageContext.request.contextPath}/branchreports">

					<div class="card h-100 py-4">
						<div class="card-body">
							<i class="fas fa-chart-line"></i> <span class="nav-link">REPORTS</span>
						</div>
					</div>
				</a>
			</div>

		</div>



	</div>

</section>


<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
	crossorigin="anonymous"></script>
</body>

</html>