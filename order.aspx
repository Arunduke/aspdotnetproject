<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="order.aspx.cs" Inherits="ShoeMart.order" %>

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
                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                        aria-expanded="false">Shop</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="category.aspx">Shop Category</a></li>
                                        <li class="nav-item"><a class="nav-link" href="productdetails.aspx">Product Details</a></li>
                                        <li class="nav-item"><a class="nav-link" href="addproduct.aspx">Add Product</a></li>
                                    <%--    <li class="nav-item"><a class="nav-link" href="confirmation.aspx">Confirmation</a></li>--%>
                                    </ul>
                                </li>
                                <li class="nav-item  active"><a class="nav-link" href="order.aspx">Order</a></li>
                       <%--         <li class="nav-item"><a class="nav-link" href="login.aspx">Login</a></li>--%>
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
        <!-- Start Banner Area -->
        <section class="banner-area organic-breadcrumb">
            <div class="container">
                <div class="breadcrumb-banner d-flex flex-wrap align-items-center justify-content-end">
                    <div class="col-first">
                        <h1>Product Order page</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.aspx">Home</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Banner Area -->
        <br />
        <br />
        <div class="col-xl-12 col-lg-8 col-md-7">

            <!-- Start Best Seller -->
            <section class="lattest-product-area pb-40 category-list">
                <div class="row">
                    <!-- single product-1--->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-product">
                            <img class="img-fluid" src="img/product/p1.jpg" alt="">
                            <div class="product-details">
                                <asp:Label ID="lbl_Brand1" runat="server" Font-Bold="true" Text="ADDIDAS"></asp:Label><br />
                                <asp:Label ID="lbl_Model1" runat="server" Font-Bold="true" Text="Addidas New Hammer Sports Shoe"></asp:Label>
                                <div class="price">
                                    <asp:Label ID="lbl_Cost1" Font-Bold="true" runat="server" Text="999"></asp:Label>&nbsp;
                                    <h6 class="l-through">$1999.00</h6>
                                </div>
                                <asp:Label ID="lbl_Size1" runat="server" CssClass="font-weight-bold" Text="Size"></asp:Label>
                                &nbsp;
                                <asp:TextBox CssClass="col-2" ID="txt_Size1" runat="server" TextMode="Number"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="btn_cart1" runat="server" CssClass="btn-dark" Text="Add To Cart" OnClick="btn_cart1_Click" />
                                &nbsp;&nbsp;
                               <asp:Button ID="btn_order1" runat="server" CssClass="btn-primary" Text="Buy Now" OnClick="btn_order1_Click" />
                            </div>
                        </div>
                    </div>
                    <!-- single product-2--->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-product">
                            <img class="img-fluid" src="img/product/p2.jpg" alt="">
                            <div class="product-details">
                                <asp:Label ID="lbl_Brand2" runat="server" Font-Bold="true" Text="Brooks"></asp:Label><br />
                                <asp:Label ID="lbl_Model2" runat="server" Font-Bold="true" Text="Brooks Ghost 17 Men's Running Shoes"></asp:Label>
                                <div class="price">
                                    <asp:Label ID="lbl_Cost2" Font-Bold="true" runat="server" Text="2300"></asp:Label>&nbsp;
                                  <h6 class="l-through">$3000.00</h6>
                                </div>
                                <asp:Label ID="lbl_Size2" runat="server" CssClass="font-weight-bold" Text="Size"></asp:Label>
                                &nbsp;
                                <asp:TextBox CssClass="col-2" ID="txt_Size2" runat="server" TextMode="Number"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="btn_cart2" runat="server" CssClass="btn-dark" Text="Add To Cart" OnClick="btn_cart2_Click" />
                                &nbsp;&nbsp;
                               <asp:Button ID="btn_order2" runat="server" CssClass="btn-primary" Text="Buy Now" OnClick="btn_order2_Click" />
                            </div>
                        </div>
                    </div>
                    <!-- single product-3--->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-product">
                            <img class="img-fluid" src="img/product/p3.jpg" alt="">
                            <div class="product-details">
                                <asp:Label ID="lbl_Brand3" runat="server" Font-Bold="true" Text="NIKE"></asp:Label><br />
                                <asp:Label ID="lbl_Model3" runat="server" Font-Bold="true" Text="Nike Vomero Plus Men's Running Shoes"></asp:Label>
                                <div class="price">
                                    <asp:Label ID="lbl_Cost3" Font-Bold="true" runat="server" Text="800"></asp:Label>&nbsp;
                                    <h6 class="l-through">$1000.00</h6>
                                </div>
                                <asp:Label ID="Label8" runat="server" CssClass="font-weight-bold" Text="Size"></asp:Label>
                                &nbsp;
                                <asp:TextBox CssClass="col-2" ID="txt_Size3" runat="server" TextMode="Number"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="btn_cart3" runat="server" CssClass="btn-dark" Text="Add To Cart" OnClick="btn_cart3_Click" />
                                &nbsp;&nbsp;
                                <asp:Button ID="btn_order3" runat="server" CssClass="btn-primary" Text="Buy Now" OnClick="btn_order3_Click" />
                            </div>
                        </div>
                    </div>
                    <!-- single product-4-->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-product">
                            <img class="img-fluid" src="img/product/p4.jpg" alt="">
                            <div class="product-details">
                                <asp:Label ID="lbl_Brand4" runat="server" Font-Bold="true" Text="HOKA"></asp:Label><br />
                                <asp:Label ID="lbl_Model4" runat="server" Font-Bold="true" Text="Hoka Clifton 10 Men's Running Shoes"></asp:Label>
                                <div class="price">
                                    <asp:Label ID="lbl_Cost4" Font-Bold="true" runat="server" Text="1900"></asp:Label>&nbsp;
                                    <h6 class="l-through">$2600.00</h6>
                                </div>
                                <asp:Label ID="Label9" runat="server" CssClass="font-weight-bold" Text="Size"></asp:Label>
                                &nbsp;
                                <asp:TextBox CssClass="col-2" ID="txt_Size4" runat="server" TextMode="Number"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="btn_cart4" runat="server" CssClass="btn-dark" Text="Add To Cart" OnClick="btn_cart4_Click" />
                                &nbsp;&nbsp;
                                <asp:Button ID="btn_order4" runat="server" CssClass="btn-primary" Text="Buy Now" OnClick="btn_order4_Click" />
                            </div>
                        </div>
                    </div>
                    <!-- single product-5-->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-product">
                            <img class="img-fluid" src="img/product/p5.jpg" alt="">
                            <div class="product-details">
                                <asp:Label ID="lbl_Brand5" runat="server" Font-Bold="true" Text="PUMA"></asp:Label>
                                <br />
                                <asp:Label ID="lbl_Model5" runat="server" Font-Bold="true" Text="Puma Air Zoom Pegasus 41 SE Running Shoes"></asp:Label>
                                <div class="price">
                                    <asp:Label ID="lbl_Cost5" Font-Bold="true" runat="server" Text="1250"></asp:Label>&nbsp;
                                   <h6 class="l-through">$1800.00</h6>
                                </div>
                                <asp:Label ID="Label10" runat="server" CssClass="font-weight-bold" Text="Size"></asp:Label>
                                &nbsp;
                                <asp:TextBox CssClass="col-2" ID="txt_Size5" runat="server" TextMode="Number"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="btn_cart5" runat="server" CssClass="btn-dark" Text="Add To Cart" OnClick="btn_cart5_Click" />
                                &nbsp;&nbsp;
                             <asp:Button ID="btn_order5" runat="server" CssClass="btn-primary" Text="Buy Now" OnClick="btn_order5_Click" />
                            </div>
                        </div>
                    </div>
                    <!-- single product-6-->
                    <div class="col-lg-4 col-md-6">
                        <div class="single-product">
                            <img class="img-fluid" src="img/product/p6.jpg" alt="">
                            <div class="product-details">
                                <asp:Label ID="lbl_Brand6" runat="server" Font-Bold="true" Text="ACICS"></asp:Label><br />
                                <asp:Label ID="lbl_Model6" runat="server" Font-Bold="true" Text="Asics Metaspeed Sky Tokyo Running Shoes"></asp:Label>
                                <div class="price">
                                    <asp:Label ID="lbl_Cost6" Font-Bold="true" runat="server" Text="1700"></asp:Label>&nbsp;
                                  <h6 class="l-through">$2100.00</h6>
                                </div>
                                <asp:Label ID="Label11" runat="server" CssClass="font-weight-bold" Text="Size"></asp:Label>
                                &nbsp;
                                <asp:TextBox CssClass="col-2" ID="txt_Size6" runat="server" TextMode="Number"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="btn_cart6" runat="server" CssClass="btn-dark" Text="Add To Cart" OnClick="btn_cart6_Click" />
                                &nbsp;&nbsp;
                             <asp:Button ID="btn_order6" runat="server" CssClass="btn-primary" Text="Buy Now" OnClick="btn_order6_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            </div>
            <!-- End Best Seller -->
           


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
