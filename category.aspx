<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="ShoeMart.category" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/shoes1.jpg">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Shoe Mart</title>
    <!--
	CSS
	============================================= -->
    <link rel="stylesheet" href="css/linearicons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/ion.rangeSlider.css" />
    <link rel="stylesheet" href="css/ion.rangeSlider.skinFlat.css" />
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/main.css">
</head>

<body>
    <form id="form1" runat="server">



        <!-- Start Header Area -->
        <header class="header_area sticky-header">
            <div class="main_menu">
                <nav class="navbar navbar-expand-lg navbar-light main_box">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="index.aspx">
                            <img src="img/logo6.png" alt=""></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>
                                <li class="nav-item submenu dropdown active">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                        aria-expanded="false">Shop</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item active"><a class="nav-link" href="category.aspx">Shop Category</a></li>
                                        <li class="nav-item"><a class="nav-link" href="productdetails.aspx">Product Details</a></li>
                                        <li class="nav-item"><a class="nav-link" href="addproduct.aspx">Add Product</a></li>
                                    <%--    <li class="nav-item"><a class="nav-link" href="confirmation.aspx">Confirmation</a></li>--%>
                                    </ul>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="order.aspx">Order</a></li>
                              <%--  <li class="nav-item"><a class="nav-link" href="login.aspx">Login</a></li>--%>
                                <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a></li>
                                <li class="nav-item"><a href="cart.aspx" class="nav-link"><span class="ti-bag"></span></a></li>
                                 <li class="nav-item"><a class="nav-link" href="login.aspx">Logout</a></li>
                            </ul>

                        </div>
                    </div>
                </nav>
            </div>

        </header>
        <!-- End Header Area -->
        <!------------------------------------------------------------------------------------------------------------->

        <!-- Start Banner Area -->
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Shop Category page</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.aspx">Home<span class="lnr lnr-arrow-right"></span></a>
                            <a href="order.aspx">Shop<span></span></a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Banner Area -->
        <br />
        <br />
        <br />
        <br />

        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-4 col-md-5">
                    <div class="sidebar-categories">
                        <div class="head">Browse Categories</div>
                        <ul class="main-categories">
                            <li class="main-nav-list"><a data-toggle="collapse" href="#" aria-expanded="false" aria-controls="fruitsVegetable"><span
                                class="lnr lnr-arrow-right"></span>All Shoes<span class="number"></span></a>
                            </li>
                            <li class="main-nav-list"><a data-toggle="collapse" href="#" aria-expanded="false" aria-controls="meatFish"><span
                                class="lnr lnr-arrow-right"></span>men & Women's Shoes<span class="number"></span></a>
                            </li>
                            <li class="main-nav-list"><a data-toggle="collapse" href="#" aria-expanded="false" aria-controls="cooking"><span
                                class="lnr lnr-arrow-right"></span>Sports Shoes<span class="number"></span></a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-xl-9 col-lg-8 col-md-7">
                    <!-- Start Best Seller -->
                    <section class="lattest-product-area pb-40 category-list">
                        <div class="row">
                            <!-- single product 1-->
                            <div class="col-lg-4 col-md-6">
                                <div class="single-product">
                                    <img class="img-fluid" src="img/product/p1.jpg" alt="">
                                    <div class="product-details">
                                        <h6>MENS AIR JORDAN 4 RETRO OG
                                    FV5029-200</h6>
                                        <div class="price">
                                            <h6>$750.00</h6>
                                            <h6 class="l-through">$999.00</h6>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- single product 2-->
                            <div class="col-lg-4 col-md-6">
                                <div class="single-product">
                                    <img class="img-fluid" src="img/product/p2.jpg" alt="">
                                    <div class="product-details">
                                        <h6>BIG KIDS' AIR JORDAN 4 RETRO OG
                                    IB4171-200</h6>
                                        <div class="price">
                                            <h6>$1700.00</h6>
                                            <h6 class="l-through">$2200.00</h6>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- single product 3-->
                            <div class="col-lg-4 col-md-6">
                                <div class="single-product">
                                    <img class="img-fluid" src="img/product/p3.jpg" alt="">
                                    <div class="product-details">
                                        <h6>Nike Giannis Freak 7 Wolf in Sheep's Clothing</h6>
                                        <div class="price">
                                            <h6>$800.00</h6>
                                            <h6 class="l-through">$1000.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product 4-->
                            <div class="col-lg-4 col-md-6">
                                <div class="single-product">
                                    <img class="img-fluid" src="img/product/p4.jpg" alt="">
                                    <div class="product-details">
                                        <h6>WOMENS JORDAN 1 HIGH OG
									FD2596-200</h6>
                                        <div class="price">
                                            <h6>$1200.00</h6>
                                            <h6 class="l-through">$1500.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product 5-->
                            <div class="col-lg-4 col-md-6">
                                <div class="single-product">
                                    <img class="img-fluid" src="img/product/p5.jpg" alt="">
                                    <div class="product-details">
                                        <h6>Nike Pegasus 41 Tokyo World Athletics</h6>
                                        <div class="price">
                                            <h6>$999.00</h6>
                                            <h6 class="l-through">$1100.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- single product 6-->
                            <div class="col-lg-4 col-md-6">
                                <div class="single-product">
                                    <img class="img-fluid" src="img/product/p6.jpg" alt="">
                                    <div class="product-details">
                                        <h6>Nike Air Force 1 Low Exoskeletal</h6>
                                        <div class="price">
                                            <h6>$1500.00</h6>
                                            <h6 class="l-through">$2100.00</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                    <!-- End Best Seller -->

                </div>
            </div>
        </div>

        <!------------------------------------------------------------------------------------------------------------->
        <!-- start footer Area -->
        <footer class="footer-area section_gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6>About Us</h6>
                            <p>
                                Footwear store offering a diverse range of stylish shoes, sandals, slippers, and boots for men, women, 
						and kids, featuring top brands like Reebok, Puma, and Bata for every occasion.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-4  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6>Contact</h6>
                            <p>California,United States</p>
                            <p>440 865 4562</p>
                            <p>brooks@colorlib.com</p>
                        </div>
                    </div>
                    <div class="col-lg-3  col-md-6 col-sm-6">
                        <div class="single-footer-widget mail-chimp">
                            <h6 class="mb-20">Instragram Feed</h6>
                            <ul class="instafeed d-flex flex-wrap">
                                <li>
                                    <img src="img/i1.jpg" alt=""></li>
                                <li>
                                    <img src="img/i2.jpg" alt=""></li>
                                <li>
                                    <img src="img/i3.jpg" alt=""></li>
                                <li>
                                    <img src="img/i4.jpg" alt=""></li>
                                <li>
                                    <img src="img/i5.jpg" alt=""></li>
                                <li>
                                    <img src="img/i6.jpg" alt=""></li>
                                <li>
                                    <img src="img/i7.jpg" alt=""></li>
                                <li>
                                    <img src="img/i8.jpg" alt=""></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h6>Follow Us</h6>
                            <p>Let us be social</p>
                            <div class="footer-social d-flex align-items-center">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-dribbble"></i></a>
                                <a href="#"><i class="fa fa-behance"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- End footer Area -->

        <!-- Modal Quick Product View -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="container relative">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="product-quick-view">
                        <div class="row align-items-center">
                            <div class="col-lg-6">
                                <div class="quick-view-carousel">
                                    <div class="item" style="background: url(img/organic-food/q1.jpg);">
                                    </div>
                                    <div class="item" style="background: url(img/organic-food/q1.jpg);">
                                    </div>
                                    <div class="item" style="background: url(img/organic-food/q1.jpg);">
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="quick-view-content">
                                    <div class="top">
                                        <h3 class="head">Mill Oil 1000W Heater, White</h3>
                                        <div class="price d-flex align-items-center"><span class="lnr lnr-tag"></span><span class="ml-10">$149.99</span></div>
                                        <div class="category">Category: <span>Homehold</span></div>
                                        <div class="available">Availibility: <span>In Stock</span></div>
                                    </div>
                                    <div class="middle">
                                        <p class="content">
                                            Mill Oil is an innovative oil filled radiator with the most modern technology. If you are
										looking for something that can make your interior look awesome, and at the same time give you the pleasant
										warm feeling during the winter.
                                        </p>
                                        <a href="#" class="view-full">View full Details <span class="lnr lnr-arrow-right"></span></a>
                                    </div>
                                    <div class="bottom">
                                        <div class="color-picker d-flex align-items-center">
                                            Color:
										<span class="single-pick"></span>
                                            <span class="single-pick"></span>
                                            <span class="single-pick"></span>
                                            <span class="single-pick"></span>
                                            <span class="single-pick"></span>
                                        </div>
                                        <div class="quantity-container d-flex align-items-center mt-15">
                                            Quantity:
										<input type="text" class="quantity-amount ml-15" value="1" />
                                            <div class="arrow-btn d-inline-flex flex-column">
                                                <button class="increase arrow" type="button" title="Increase Quantity"><span class="lnr lnr-chevron-up"></span></button>
                                                <button class="decrease arrow" type="button" title="Decrease Quantity"><span class="lnr lnr-chevron-down"></span></button>
                                            </div>

                                        </div>
                                        <div class="d-flex mt-20">
                                            <a href="#" class="view-btn color-2"><span>Add to Cart</span></a>
                                            <a href="#" class="like-btn"><span class="lnr lnr-layers"></span></a>
                                            <a href="#" class="like-btn"><span class="lnr lnr-heart"></span></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>



        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4"
            crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/main.js"></script>


    </form>
</body>
</html>
