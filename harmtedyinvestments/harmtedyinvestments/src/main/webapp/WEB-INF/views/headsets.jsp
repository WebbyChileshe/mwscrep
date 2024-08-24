<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Harmtedy Investments| Headsets</title>

    <!-- jquery -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <!-- fonts icons start-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <script src="https://kit.fontawesome.com/018d9ba538.js" crossorigin="anonymous"></script>


    <!-- fonts  end-->

    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Open+Sans:400,450,500,520,550,600,700,900,1000">


    <!-- bootrsap cdn css link -->

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">


    
        <!-- styles start-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shopfiles/shopcss/animation.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shopfiles/shopcss/welcomepage.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/shopfiles/shopcss/newheader.css">

    <!-- styles end -->
    <!-- jQuery -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>


<style>
    .product_holder .product_properties strong {
        width: 130px;

    }
</style>

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
                                        <a href="./index.html">
                                            Harmtedy <span id="special" class="d-md-noe"> Investments </span>
                                            <span class="fiishing_logo d-none">Limited Company</span>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-12 col-md-8 col-lg-8 col-xl-9 contact_holder">
                                    <div class="contacts d-flex">
                                        <div class="location">
                                            <span class="icon">
                                                <i class="fa-solid fa-map"></i>
                                                <a href="#">Iringa Mall shop No.20</a>
                                            </span>
                                        </div>
                                        <div class="deliveries">
                                            <span class="icon">
                                                <i class="fa-solid fa-truck"></i>
                                                <a href="#">CountryWide Deliveries</a>
                                            </span>
                                        </div>
                                        <div class="email">
                                            <span class="icon">
                                                <span class="fa-solid fa-paper-plane"></span>
                                                <a target="_blank"
                                                    href="https://mail.google.com/mail/?view=cm&fs=1&to=harmtedy@email.com">
                                                    harmtedy@gmail.com
                                                </a>
                                            </span>
                                        </div>
                                        <div class="phone">
                                            <span class="icon">
                                                <i class="fa-solid fa-phone"></i>
                                                <a href="tel:+260975347176" target="_blank">+2609 75347176</a>
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
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
    
                    <!-- Form Outside the Collapsible Navbar -->
                    <div class="d-flex d-md-none order-lg-1 ms-auto" role="search">
                        <a class="locate_store" href="./contact.html">Locate Store</a>
                    </div>
    
                    <!-- Collapsible Navbar Content -->
                    <div class="collapse navbar-collapse order-lg-0" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-left mx-md-auto mb-2 mb-lg-0">
							<li class="nav-item">
							<a class="nav-link "
								aria-current="page"
								href="${pageContext.request.contextPath}/home">Home</a></li>
							<li class="nav-item"><a class="nav-link"
								aria-current="page"
								href="${pageContext.request.contextPath}/laptops">Laptops</a></li>
							<li class="nav-item"><a class="nav-link activelink" aria-current="page"
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
                            <div class="col-md-12 prod_image p-0 m-0" id="product_image">
                                <img src="${pageContext.request.contextPath}/shopfiles/productsimages/headsets/airpodspro2.png" alt="Headset Image"
                                    class="img-fluid product_image_src" id="product_image_src_1">
                            </div>

                            <div class="col-md-12 product_desc p-0">
                                <div class="card-body product_details">
                                    <h5 class="card-title product_model mb-3 mt-0 p-0">AirPods (2nd Generation)</h5>

                                    <div class="card-text product_properties p-0">
                                        <p><strong>Battery Life:</strong> Up to 5 hours</p>
                                        <p><strong>Noise Cancelling:</strong> <i class="fa-solid fa-times"></i></p>
                                        <p><strong>Wireless Charging:</strong> <i class="fa-solid fa-times"></i></p>
                                        <p><strong>Price:</strong> k250</p>

                                        <div class="hidden_features d-none">
                                            <p><strong>Battery Life (Case):</strong> More than 24 hrs</p>
                                            <p><strong>Connectivity:</strong> Bluetooth 5.0</p>
                                            <p><strong>Included Charging Cable:</strong> Lightning to USB-A</p>
                                            <p><strong>Water Resistance (Earbuds):</strong> <i
                                                    class="fa-solid fa-times"></i></p>

                                        </div>

                                        <div class="btns_for_buying">
                                            <button class="btn btn-primary mt-2 w-100 view_more_button"
                                                data-bs-toggle="modal" data-bs-target="#productModal">
                                                <i class="fa-solid fa-eye"></i>
                                            </button>

                                            <button type="button" class="btn btn-success mt-2 w-100 buy_directly"
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

                <!-- product2 -->
                <div class="col-12 col-md-4 col-lg-3 col-sm-6">
                    <!-- Product Holder -->
                    <div class="card mb-2 product_holder">
                        <div class="row g-0 products_contents" id="product_row_1">
                            <div class="col-md-12 prod_image p-0 m-0" id="product_image">
                                <img src="${pageContext.request.contextPath}/shopfiles/productsimages/headsets/airpods3rdgen.png" alt="Headset Image"
                                    class="img-fluid product_image_src" id="product_image_src_1">
                            </div>
                            <div class="col-md-12 product_desc p-0">
                                <div class="card-body product_details">
                                    <h5 class="card-title product_model mb-3 mt-0 p-0">AirPods (3rd Generation)</h5>

                                    <div class="card-text product_properties p-0">
                                        <p><strong>Battery Life:</strong> Up to 6 hours</p>
                                        <p><strong>Noise Cancelling:</strong> <i class="fa-solid fa-times"></i></p>
                                        <p><strong>Wireless Charging:</strong> <i class="fa-solid fa-times"></i></p>
                                        <p><strong>Price:</strong> k300</p>

                                        <div class="hidden_features d-none">
                                            <p><strong>Water Resistance (Earbuds):</strong> IPX4</p>
                                            <p><strong>Battery Life (Case):</strong> Up to 30 hours</p>
                                            <p><strong>Connectivity:</strong> Bluetooth 5.0</p>
                                            <p><strong>Earbud Weight:</strong> 4.28 grams</p>
                                            <p><strong>Case Weight:</strong> 37.91 grams</p>
                                            <p><strong>Included Charging Cable:</strong> Lightning to USB-C</p>
                                        </div>

                                        <div class="btns_for_buying">
                                            <button class="btn btn-primary mt-2 w-100 view_more_button"
                                                data-bs-toggle="modal" data-bs-target="#productModal">
                                                <i class="fa-solid fa-eye"></i>
                                            </button>

                                            <button type="button" class="btn btn-success mt-2 w-100 buy_directly"
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
                            <div class="col-md-12 prod_image p-0 m-0" id="product_image">
                                <img src="${pageContext.request.contextPath}/shopfiles/productsimages/headsets/airpodsfirstgene.png" alt="Headset Image"
                                    class="img-fluid product_image_src" id="product_image_src_1">
                            </div>
                            <div class="col-md-12 product_desc p-0">

                                <div class="card-body product_details">
                                    <h5 class="card-title product_model mb-3 mt-0 p-0">AirPods Pro (1st Generation)</h5>

                                    <div class="card-text product_properties p-0">
                                        <p><strong>Battery Life:</strong> Up to 4.5 hours</p>
                                        <p><strong>Noise Cancelling:</strong> <i class="fa-solid fa-check"></i>
                                        </p>
                                        <p><strong>Wireless Charging:</strong> <i class="fa-solid fa-times"></i></p>
                                        <p><strong>Price:</strong> k320</p>

                                        <div class="hidden_features d-none">
                                            <p><strong>Water Resistance (Earbuds):</strong> IPX4</p>

                                            <p><strong>Battery Life (Case):</strong> More than 24 hours</p>
                                            <p><strong>Included Charging Cable:</strong> Lightning to USB-C</p>
                                        </div>

                                        <div class="btns_for_buying">
                                            <button class="btn btn-primary mt-2 w-100 view_more_button"
                                                data-bs-toggle="modal" data-bs-target="#productModal">
                                                <i class="fa-solid fa-eye"></i>
                                            </button>

                                            <button type="button" class="btn btn-success mt-2 w-100 buy_directly"
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
                            <div class="col-md-12 prod_image p-0 m-0" id="product_image">
                                <img src="${pageContext.request.contextPath}/shopfiles/productsimages/headsets/airpodspro22.png" alt="Headset Image"
                                    class="img-fluid product_image_src" id="product_image_src_1">
                            </div>
                            <div class="col-md-12 product_desc p-0">
                                <div class="card-body product_details">
                                    <h5 class="card-title product_model mb-3 mt-0 p-0">AirPods Pro (2nd Generation)</h5>

                                    <div class="card-text product_properties p-0">
                                        <p><strong>Battery Life:</strong> Up to 6 hours</p>
                                        <p><strong>Noise Cancelling:</strong> <i class="fa-solid fa-check"></i>
                                        </p>
                                        <p><strong>Wireless Charging:</strong> <i class="fa-solid fa-check"></i></p>
                                        </p>
                                        <p><strong>Price:</strong> k350</p>

                                        <div class="hidden_features d-none">
                                            <p><strong>Water Resistance (Earbuds):</strong> IPX4</p>
                                            <p><strong>Battery Life (Case):</strong> Up to 30 hours</p>
                                            <p><strong>Connectivity:</strong> Bluetooth 5.3</p>
                                            <p><strong>Included Charging Cable:</strong> Lightning to USB-C</p>
                                        </div>

                                        <div class="btns_for_buying">
                                            <button class="btn btn-primary mt-2 w-100 view_more_button"
                                                data-bs-toggle="modal" data-bs-target="#productModal">
                                                <i class="fa-solid fa-eye"></i>
                                            </button>

                                            <button type="button" class="btn btn-success mt-2 w-100 buy_directly"
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
                            <div class="col-md-12 prod_image p-0 m-0" id="product_image">
                                <img src="${pageContext.request.contextPath}/shopfiles/productsimages/headsets/airmax.png" alt="Headset Image"
                                    class="img-fluid product_image_src" id="product_image_src_1">
                            </div>
                            <div class="col-md-12 product_desc p-0">
                                <div class="card-body product_details">

                                    <div class="card-body product_details">
                                        <h5 class="card-title product_model mb-3 mt-0 p-0">AirPods Max</h5>

                                        <div class="card-text product_properties p-0">
                                            <p><strong>Battery Life:</strong> Up to 20 hours</p>
                                            <p><strong>Noise Cancelling:</strong> <i class="fa-solid fa-check"></i>
                                            </p>
                                            <p><strong>Wireless Charging:</strong> <i class="fa-solid fa-times"></i></p>
                                            <p><strong>Price:</strong> k600</p>
                                            <div class="hidden_features d-none">
                                                <p><strong>Connectivity:</strong> Bluetooth 5.0</p>
                                                <p><strong>Included Charging Cable:</strong> Lightning to USB-C</p>
                                                <p><strong>Water Resistance (Earbuds):</strong> <i
                                                        class="fa-solid fa-times"></i></p>
                                                <p><strong>Transparency Mode:</strong> <i class="fa-solid fa-check"></i>
                                                </p>
                                            </div>

                                            <div class="btns_for_buying">
                                                <button class="btn btn-primary mt-2 w-100 view_more_button"
                                                    data-bs-toggle="modal" data-bs-target="#productModal">
                                                    <i class="fa-solid fa-eye"></i>
                                                </button>

                                                <button type="button" class="btn btn-success mt-2 w-100 buy_directly"
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
        </div>
    </section>


    <!-- Modal -->
    <div class="modal" id="productModal" tabindex="-1" aria-labelledby="productModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="productModalLabel">Product Details</h5>
                    <!-- <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button> -->
                </div>
                <div class="modal-body">
                    <!-- Content will be filled dynamically -->
                    <div class="modal_product_image">
                        <img src="" alt="Product Image" class="img-fluid" id="modal_product_image">
                    </div>
                    <div id="modal_product_model" class="mt-3">
                        <!-- Model name will be dynamically inserted here -->
                    </div>
                    <div id="modal_product_details" class="mt-3">
                        <!-- Product details will be dynamically inserted here -->
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="buy_button">Buy This Item</button>
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-- lorem ipsum text -->

    <!-- boostrap cdn with poppper -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"
        integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy"
        crossorigin="anonymous"></script>


    <!-- jquery -->

    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <!-- external js sheet -->
  
	<!-- external js sheet -->
	<script
		src="${pageContext.request.contextPath}/shopfiles/shopjs/script.js"></script>
	<script
		src="${pageContext.request.contextPath}/shopfiles/shopjs/animation.js"></script>


</body>


</html>