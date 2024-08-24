<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Harmtedy Investments| Laptops</title>

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

<body>

	<div id="spinner" class="spinner">
		<div class="spinner-content">
			<!-- You can use a CSS spinner or an image -->
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
							<a class="nav-link "
								aria-current="page"
								href="${pageContext.request.contextPath}/home">Home</a></li>
							<li class="nav-item"><a class="nav-link activelink"
								aria-current="page"
								href="${pageContext.request.contextPath}/laptops">Laptops</a></li>
							<li class="nav-item"><a class="nav-link " aria-current="page"
								href="${pageContext.request.contextPath}/headsets">Airpods</a></li>
							<li class="nav-item"><a class="nav-link"
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
	<section class="gadgets_div">
		<div class="container-lg text-center">

			<div class="row products_holder justify-co">
				<!-- prod 1 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/yogaotouchscreen.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Touch
										Screen Lenovo Yoga</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel 6th gene
										</p>
										<p>
											<strong>RAM:</strong> 4GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 128GB SSD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 4 hours
										</p>
										<p>
											<strong>Price:</strong> K3,500
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 11.5" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 11 Pro
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- product 2 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/yoga2.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Touch
										Screen Lenovo Yoga</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei5
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 500GB HDD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 5 hours
										</p>
										<p>
											<strong>Price:</strong> K3,850
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 14" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Pro
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- product 3 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/hpg5.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">HP
										ProBook 640 g5</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei5 8th gen
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 500GB HDD + 256SSD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 5 hours
										</p>
										<p>
											<strong>Price:</strong> K7,000
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 14.1" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 11 Pro
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- product 4 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/hpg3.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">HP
										EliteBook 840 G3</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei5
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 500GB HDD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 5 hours
										</p>
										<p>
											<strong>Price:</strong> K4,950
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 14.1" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 11 Pro
											</p>
											<p>
												<strong>Others:</strong> Comes with Activated Office 365
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- product 5 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/lenovos.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Lenovos</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Inside
										</p>
										<p>
											<strong>RAM:</strong> 4GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 500GB HDD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 4 hours
										</p>
										<p>
											<strong>Price:</strong> K2,750
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 12.5" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 11 Pro
											</p>
											<p>
												<strong>Others:</strong> Comes with Activated Office 365
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- product 6 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/delle3380.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Dell
										Latitude E3380</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei3
										</p>
										<p>
											<strong>RAM:</strong> 4GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 500GB HDD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 4 hours
										</p>
										<p>
											<strong>Price:</strong> K3,950
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 13" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Pro
											</p>
											<p>
												<strong>Others:</strong> Comes with Activated Office 365
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- product 7 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/lenovot460.png" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Lenovo
										T460</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei3 6th gene
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 500GB HDD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 4 hours
										</p>
										<p>
											<strong>Price:</strong> K4,500
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 14" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Pro
											</p>
											<p>
												<strong>Others:</strong> Comes with Activated Office 365
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- product 8 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/640g2hp.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">HP
										ProBook 640 G2</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei5 2.5GHZ
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 500GB HDD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 4 hours
										</p>
										<p>
											<strong>Price:</strong> K4,850
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 14" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Pro
											</p>
											<p>
												<strong>Others:</strong> Comes with Activated Office 365
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- product 9 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/thinkpadlenovo.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Lenovo
										Thinkpad</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei5
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 500GB HDD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 6 hours
										</p>
										<p>
											<strong>Price:</strong> K3,950
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 14" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Pro
											</p>
											<p>
												<strong>Others:</strong> Comes with Activated Office 365
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- product 10-->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/t460s.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Lenovo
										Touch Screen T460s</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei5 6th gene
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 256GB SSD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 4 hours
										</p>
										<p>
											<strong>Price:</strong> K5,500
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 14" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 11 Pro
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- product 10-->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<!-- Product Holder -->
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_1">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/slims.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_1">
							</div>

							<div class="col-md-12 product_desc p-0 ">

								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Lenovo
										Slim T460s</h5>

									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei5 6th gene
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR3
										</p>
										<p>
											<strong>Storage:</strong> 256GB SSD
										</p>
										<p>
											<strong>Battery Life:</strong>Dual Up to 7 hours
										</p>
										<p>
											<strong>Price:</strong> K4,800
										</p>

										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 14" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel HD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 11 Pro
											</p>
										</div>

										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>

											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>



									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- chat laptops -->

				<!-- Product 2 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_2">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/dellinpirios.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_2">
							</div>
							<div class="col-md-12 product_desc p-0 ">
								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Dell
										Inspiron 15 3000</h5>
									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei7 10th gen
										</p>
										<p>
											<strong>RAM:</strong> 16GB DDR4
										</p>
										<p>
											<strong>Storage:</strong> 512GB SSD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 8 hours
										</p>
										<p>
											<strong>Price:</strong> Order Now
										</p>
										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 15.6" FHD
											</p>
											<p>
												<strong>Graphics:</strong> NVIDIA GeForce MX230
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Home
											</p>
										</div>
										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>
											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Product 3 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_3">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/hppabilion.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_3">
							</div>
							<div class="col-md-12 product_desc p-0 ">
								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">HP
										Pavilion x360</h5>
									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei5 11th gen
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR4
										</p>
										<p>
											<strong>Storage:</strong> 512GB SSD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 9 hours
										</p>
										<p>
											<strong>Price:</strong> Order Now
										</p>
										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 14" FHD Touch
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel Iris Xe Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Home
											</p>
										</div>
										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>
											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Product 4 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_4">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/acer-aspire.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_4">
							</div>
							<div class="col-md-12 product_desc p-0 ">
								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Acer
										Aspire 5</h5>
									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> AMD Ryzen 5 4500U
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR4
										</p>
										<p>
											<strong>Storage:</strong> 256GB SSD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 10 hours
										</p>
										<p>
											<strong>Price:</strong> Order Now
										</p>
										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 15.6" FHD
											</p>
											<p>
												<strong>Graphics:</strong> AMD Radeon Vega 8
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Home
											</p>
										</div>
										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>
											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Product 5 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_5">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/macbookair.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_5">
							</div>
							<div class="col-md-12 product_desc p-0 ">
								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Apple
										MacBook Air M1</h5>
									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Apple M1 chip
										</p>
										<p>
											<strong>RAM:</strong> 8GB Unified Memory
										</p>
										<p>
											<strong>Storage:</strong> 256GB SSD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 15 hours
										</p>
										<p>
											<strong>Price:</strong> Order Now
										</p>
										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 13.3" Retina
											</p>
											<p>
												<strong>Graphics:</strong> Integrated 7-core GPU
											</p>
											<p>
												<strong>Operating System:</strong> macOS
											</p>
										</div>
										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>
											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Product 6 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_6">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/lenovo-ideapad.jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_6">
							</div>
							<div class="col-md-12 product_desc p-0 ">
								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Lenovo
										IdeaPad 3</h5>
									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei3 10th gen
										</p>
										<p>
											<strong>RAM:</strong> 4GB DDR4
										</p>
										<p>
											<strong>Storage:</strong> 256GB SSD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 6 hours
										</p>
										<p>
											<strong>Price:</strong> Order Now
										</p>
										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 15.6" HD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel UHD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Home
											</p>
										</div>
										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>
											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<!-- Product 7 -->
				<div class="col-12 col-md-4 col-lg-3 col-sm-6">
					<div class="card mb-2 product_holder">
						<div class="row g-0 products_contents" id="product_row_7">
							<div class="col-md-12 prod_image p-0 m-0 " id="product_image">
								<img src="${pageContext.request.contextPath}/shopfiles/productsimages/laptops/AVivoBook 15 .jpeg" alt=""
									class="img-fluid product_image_src" id="product_image_src_7">
							</div>
							<div class="col-md-12 product_desc p-0 ">
								<div class="card-body product_details">
									<h5 class="card-title product_model mb-3 mt-0 p-0">Asus
										VivoBook 15</h5>
									<div class="card-text product_properties p-0">
										<p>
											<strong>Processor:</strong> Intel Corei5 10th gen
										</p>
										<p>
											<strong>RAM:</strong> 8GB DDR4
										</p>
										<p>
											<strong>Storage:</strong> 512GB SSD
										</p>
										<p>
											<strong>Battery Life:</strong> Up to 7 hours
										</p>
										<p>
											<strong>Price:</strong> Order Now
										</p>
										<div class="hidden_features d-none">
											<p>
												<strong>Display:</strong> 15.6" FHD
											</p>
											<p>
												<strong>Graphics:</strong> Integrated Intel UHD Graphics
											</p>
											<p>
												<strong>Operating System:</strong> Windows 10 Home
											</p>
										</div>
										<div class="btns_for_buying">
											<button class="btn btn-primary mt-2 w-100 view_more_button"
												data-bs-toggle="modal" data-bs-target="#productModal">
												<i class="fa-solid fa-eye"></i>
											</button>
											<button type="button" class="btn buy_directly"
												id="buy_directly">
												<i class="fa-solid fa-cart-shopping"></i>
											</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>

		</div>
		</div>
	</section>

	<!-- Modal -->
	<div class="modal" id="productModal" tabindex="-1"
		aria-labelledby="productModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="productModalLabel">Product Details</h5>
					<!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
				</div>
				<div class="modal-body">
					<!-- Content will be filled dynamically -->
					<div class="modal_product_image">
						<img src="" alt="Product Image" class="img-fluid"
							id="modal_product_image">
					</div>
					<div id="modal_product_model" class="mt-3">
						<!-- Model name will be dynamically inserted here -->
					</div>
					<div id="modal_product_details" class="mt-3">
						<!-- Product details will be dynamically inserted here -->
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" id="buy_button">Buy
						This Item</button>
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<!-- boostrap cdn with poppper -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
		integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
		integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
		crossorigin="anonymous"></script>

	<!-- mansory -->

	<!-- jquery -->

	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

	<!-- external js sheet -->
	<script
		src="${pageContext.request.contextPath}/shopfiles/shopjs/script.js"></script>
	<script
		src="${pageContext.request.contextPath}/shopfiles/shopjs/animation.js"></script>

	<script>
		
	</script>

</body>
</html>