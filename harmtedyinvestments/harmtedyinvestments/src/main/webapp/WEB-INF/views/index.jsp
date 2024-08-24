<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Harmtedy Investments| Home</title>


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


<!-- styles start-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shopfiles/shopcss/animation.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shopfiles/shopcss/welcomepage.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shopfiles/shopcss/newheader.css">

<!-- styles end -->
<!-- jQuery -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<style>
/* .product_holder .product_properties strong {
        width: 130px;
    } */
.gadgets_div, .modal {
	display: none;
}
</style>

<body>

	<div id="spinner" class="spinner">
		<div class="spinner-content">
			You can use a CSS spinner or an image
			<div class="spinner-icon"></div>
		</div>
	</div>
	<!-- header -->

	<div class="container-fluid p-0 header">
		<!-- Full-width background section -->
		<div class="full-width-bg bg-body-tertiary">
			<div class="container-fluid">
				<div class="row align-items-start content_holder">
					<div class="col-12">
						<!-- contacts -->
						<div class="container-fluid">
							<div class="row top_header_container">
								<div class="col-12 col-md-4 col-lg-4 col-xl-3 p-0 logo_holder">
									<div class="logo">
										<a href="./index.html"> Harmtedy <span id="special"
											class="d-md-noe"> Investments </span> <span
											class="fiishing_logo d-none">Limited Company</span>
										</a>
									</div>
								</div>
								<div class="col-12 col-md-8 col-lg-8 col-xl-9 contact_holder">
									<div class="contacts d-flex">
										<div class="location">
											<span class="icon"> <i class="fa-solid fa-map"></i> <a
												href="#">Iringa Mall shop No.20</a>
											</span>
										</div>
										<div class="deliveries">
											<span class="icon"> <i class="fa-solid fa-truck"></i>
												<a href="#">CountryWide Deliveries</a>
											</span>
										</div>
										<div class="email">
											<span class="icon"> <span
												class="fa-solid fa-paper-plane"></span> <a target="_blank"
												href="https://mail.google.com/mail/?view=cm&fs=1&to=harmtedy@email.com">
													harmtedy@gmail.com </a>
											</span>
										</div>
										<div class="phone">
											<span class="icon"> <i class="fa-solid fa-phone"></i>
												<a href="tel:+260975347176" target="_blank">+2609
													75347176</a>
											</span>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- contacts end -->
					</div>
				</div>
			</div>
		</div>

		<!-- Navbar Section -->
		<div class="col-12 p-0 navbar_holder">
			<nav class="navbar navbar-expand-md">
				<div class="container-fluid">
					<!-- Navbar Toggler Button -->
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>

					<!-- Form Outside the Collapsible Navbar -->
					<div class="d-flex d-md-none order-lg-1 ms-auto" role="search">
						<a class="locate_store" href="./contact.html">Locate Store</a>
					</div>

					<!-- Collapsible Navbar Content -->
					<div class="collapse navbar-collapse order-lg-0"
						id="navbarSupportedContent">
						<ul class="navbar-nav mx-left mx-md-auto mb-2 mb-lg-0">
							<li class="nav-item">
							<a class="nav-link activelink"
								aria-current="page"
								href="${pageContext.request.contextPath}/home">Home</a></li>
							<li class="nav-item"><a class="nav-link"
								aria-current="page"
								href="${pageContext.request.contextPath}/laptops">Laptops</a></li>
							<li class="nav-item"><a class="nav-link" aria-current="page"
								href="${pageContext.request.contextPath}/headsets">Airpods</a></li>
							<li class="nav-item"><a class="nav-link "
								aria-current="page"
								href="${pageContext.request.contextPath}/contact">Locate
									Store</a></li>
						</ul>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- body starts -->
	<section class="home" id="home">
		<div class="wrapper_home">
			<div class="home_contents ">
				<h1 class="home_title" id="dynamicTitle"></h1>
				<h3 class="subheading" id="dynamicSubheading"></h3>
				<p>
					<a href="${pageContext.request.contextPath}/laptops" class="home_view_our_works"
						id="dynamicLink"></a>
				</p>
			</div>
		</div>
	</section>

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

	<!-- external js sheet -->
	<script
		src="${pageContext.request.contextPath}/shopfiles/shopjs/script.js"></script>
	<script
		src="${pageContext.request.contextPath}/shopfiles/shopjs/animation.js"></script>
	<script
		src="${pageContext.request.contextPath}/shopfiles/shopjs/home.js"></script>


</body>

</html>