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
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin| ManageBranches</title>


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


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/insideheader.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/dashboard.css">



    <!-- styles end -->
    <!-- jQuery -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<style>
    /* .product_holder .product_properties strong {
        width: 130px;
    } */

    .gadgets_div,
    .modal {
        display: none;
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
                                        <a class="navbar-brand company_name" href="#">Harmtedy Investments</a>
                                        <a class="navbar-brand username" href="#">
                                            <i class="fa-solid fa-user"></i> <span id="username">micheal
                                                sinkamba</span></a>
                                    </div>


                                    <div class="log_in_log_out_btns">
                                        <button class="btn text-light visit_site" type="submit">Visit Site</button>
                                        <button class="btn btn-outline-success logout bg-danger text-light"
                                            type="submit">Logout</button>
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
                    <a href="" class="tittle  d-none d-md-block">ORDER</a>
                    <!-- Navbar Toggler Button -->
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <!-- Form Outside the Collapsible Navbar -->
                    <div class="d-flex d-md-none order-lg-1 ms-auto" role="searh">
                        <a href="" class="locate_store tittle   d-block d-md-none">ORDER</a>
                    </div>

                    <!-- Collapsible Navbar Content -->
                    <div class="collapse navbar-collapse order-lg-0" id="navbarSupportedContent">
                        <ul class="navbar-nav mx-left mx-md-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <a class="nav-link activelink " aria-current="page" href="./index.html">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " aria-current="page" href="./laptops.html">Laptops</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" aria-current="page" href="./headsets.html">Airpods</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " aria-current="page" href="./contact.html">Locate Store</a>
                            </li>
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
                <p><a href="./laptops.html" class="home_view_our_works" id="dynamicLink"></a></p>
            </div>
        </div>
    </section>

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
</body>

</html>