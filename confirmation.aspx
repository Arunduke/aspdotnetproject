<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="confirmation.aspx.cs" Inherits="ShoeMart.confirmation" %>

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
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/themify-icons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
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
                               <li class="nav-item active"><a class="nav-link" href="confirmation.aspx">Confirmation</a></li>
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
                        <h1>Confirmation</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.aspx">Home</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Banner Area -->

        <!--================Order Details Area =================-->
        <section class="order_details section_gap">
            <div class="container">
                <h3 class="title_confirmation">Thank you. Your order has been received.</h3>
            </div>
        </section>

        <div style="display: flex; align-items: center;">
            <div class="container col-8 p-5 rounded rounded-3 h-auto">
                <!---- Address ----->
                <div class="container col-5 p-4 shadow-lg list-row gray-bg">

                    <h5>Deliver to :</h5>

                    <asp:Label runat="server" Text="Address"></asp:Label>
                    <asp:TextBox ID="txt_cnfrm_Address" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>

                </div>
                <br />
                <!---Products---->
                <div class="container col-5 p-4 shadow-lg list-row overlay-bg">

                    <h5>Product Details</h5>
                    <asp:Label runat="server" Text="Brand Name"></asp:Label>
                    <asp:TextBox ID="txt_cnfrm_Brand" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                    <asp:Label runat="server" Text="Model Name"></asp:Label>
                    <asp:TextBox ID="txt_cnfrm_Model" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                    <asp:Label runat="server" Text="Size"></asp:Label>
                    <asp:TextBox ID="txt_cnfrm_Size" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>

                </div>
                <br />
                <!----Billing---->
                <div class="container col-5 p-4 shadow-lg list-row bg-light rounded-3">

                    <h5>Price Details</h5>
                    <hr class="border-secondary" />
                    <asp:Label runat="server" Text="Price"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label runat="server" Text=":" CssClass="text-right"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_cnfrm_Cost" runat="server" CssClass="border-0 col-4 ml-xl-5" AutoPostBack="true" OnTextChanged="txt_cnfrm_Price_TextChanged"></asp:TextBox>
                    <br />

                    <asp:Label runat="server" Text="GST"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label runat="server" Text=":" CssClass="text-right"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_cnfrm_Gst" runat="server" CssClass="border-0 col-4 ml-xl-5" ReadOnly="true"></asp:TextBox>
                    <hr class="border-dark" />
                    <asp:Label runat="server" Text="Total Amount" CssClass="text-dark"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_cnfrm_Total" runat="server" CssClass="border-0 col-4 ml-xl-5" ReadOnly="true"></asp:TextBox><br />


                    <asp:Label runat="server" Text="Cash On Delivery"></asp:Label>&nbsp;&nbsp;
                    <asp:RadioButton ID="rdo_cnfrm_Cash" runat="server" />
                    <br />
                    <asp:Label runat="server" Text="Online Payment"></asp:Label>&nbsp;&nbsp; &nbsp;&nbsp; 
                    <asp:RadioButton ID="rdo_cnfrm_Online" runat="server" />
                    <br />


                </div>
                <br />
                <div class="text-center">
                    <asp:Button ID="btn_OrderPlace" runat="server" Text="Place Order" CssClass="btn btn-success shadow-lg gradient-bg text-body" OnClick="btn_OrderPlace_Click" />
                </div>

            </div>
        </div>
        <br />

    <%--    <div class=" container text-center p1-gradient-color p-3 col-2 ">
            <h4>Grid View</h4>
        </div>
        <br />
        <br />
        <div class="col">
            <asp:GridView ID="gv_Cnfrm" runat="server" CssClass="table table-bordered table-hover" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" />
                    <asp:BoundField DataField="name" HeaderText="Product Name" />
                    <asp:BoundField DataField="date" HeaderText="Date" />
                    <asp:BoundField DataField="address" HeaderText="Address" />
                    <asp:BoundField DataField="code" HeaderText="Pincode" />
                    <asp:BoundField DataField="amount" HeaderText="Payment" />
                    <asp:BoundField DataField="order" HeaderText="Order Confirmmed" />
                    <asp:BoundField DataField="delivery" HeaderText="Delivered" />
                </Columns>
            </asp:GridView>
        </div>--%>
        <!--================End Order Details Area =================-->
        &nbsp;
        &nbsp;

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
