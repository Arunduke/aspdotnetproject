<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addproductdetails.aspx.cs" Inherits="ShoeMart.addproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="icon" href="img/shoes1.jpg">
    <!-- Author Meta -->
    <meta name="author" content="CodePixar">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -->
    <meta charset="UTF-8">
    <!-- Site Title -->
    <title>Shoes Mart</title>

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
                                <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li>
                                <li class="nav-item submenu dropdown active">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                                        aria-expanded="false">Shop</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="category.aspx">Shop Category</a></li>
                                        <li class="nav-item"><a class="nav-link" href="productdetails.aspx">Product Details</a></li>
                                        <li class="nav-item active"><a class="nav-link" href="addproduct.aspx">Add Product</a></li>
                                   <%--     <li class="nav-item"><a class="nav-link" href="confirmation.aspx">Confirmation</a></li>--%>
                                    </ul>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="order.aspx">Order</a></li>
                             <%--   <li class="nav-item"><a class="nav-link" href="login.aspx">Login</a></li>--%>
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
                        <h1>Add Product Page</h1>
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
        <!-- Strat Add Product Area -->
        <div class="col-first">
            <h1 class="text-center">Add Product</h1>
        </div>
        <br />
        <br />
        <br />
        <div class="container">
            <div class="row mb-4">
                <div class="col-3">
                    <asp:Label runat="server" Text="Brand Name"></asp:Label>
                    <asp:TextBox ID="txt_AP_Name" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Brand Name is Required" ControlToValidate="txt_AP_Name" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
                &nbsp;  &nbsp;  &nbsp;
                <div class="col-4">
                    <asp:Label runat="server" Text="Model"></asp:Label>
                    <asp:DropDownList ID="ddl_AP_Model" runat="server" CssClass="form-select" DataTextField="Model" DataValueField="Model">
                        <asp:ListItem>Addidas New Hammer Sports Shoes</asp:ListItem>
                        <asp:ListItem>Brooks Ghost 17 Men's Running Shoes</asp:ListItem>
                        <asp:ListItem>Nike Vomero Plus Men's Running Shoes</asp:ListItem>
                        <asp:ListItem>Hoka Clifton 10 Men's Running Shoes</asp:ListItem>
                        <asp:ListItem>Puma Air Zoom Pegasus 41 SE Running Shoes</asp:ListItem>
                        <asp:ListItem>Asics Metaspeed Sky Tokyo Running Shoes</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-3">
                    <asp:Label runat="server" Text="Category"></asp:Label>
                    <br>
                    <asp:RadioButton ID="rdo_AP_Shoe" Text="Shoe" Checked="true" GroupName="Category" runat="server" /><br />
                    <asp:RadioButton ID="rdo_AP_Sliper" Text="Sliper" GroupName="Category" runat="server" />
                </div>
                &nbsp;  &nbsp;  &nbsp;
                <div class="col-3">
                    <asp:Label runat="server" Text="Date Of Purchase"></asp:Label>
                    <asp:TextBox ID="txt_AP_Dop" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="DOP is Required" ControlToValidate="txt_AP_Dop" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-3">
                    <asp:Label runat="server" Text="Number of Units"></asp:Label>
                    <asp:TextBox ID="txt_AP_Number" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="No Of Units is Required" ControlToValidate="txt_AP_Number" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
                &nbsp;  &nbsp;  &nbsp;
                <div class="col-3">
                    <asp:Label runat="server" Text="Price"></asp:Label>
                    <asp:TextBox ID="txt_AP_Price" runat="server" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ErrorMessage="Price is Required" ControlToValidate="txt_AP_Price" CssClass="text-danger"></asp:RequiredFieldValidator>
                </div>
            </div>

            <br />

            <div class="row login_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
                <div class="col-md-2 form-group">
                    <asp:Button ID="btn_AP_add" runat="server" Text="ADD" class="primary-btn" OnClick="btn_add_product_Click" />
                </div>
                <div class="col-md-2 form-group">
                    <asp:Button ID="btn_AP_Edit" runat="server" Text="Edit" class="primary-btn" OnClick="btn_ap_edit_Click" />
                </div>
                <div class="col-md-2 form-group">
                    <asp:Button ID="btn_AP_Delete" runat="server" Text="Delete" class="primary-btn" OnClick="btn_ap_delete_Click" />
                </div>
            </div>
        </div>

        <br />


        <!--Grid View Start -->

        <div class="container col-10 p-5 shadow-lg table-hover p1-gradient-color">

            <asp:GridView ID="gv_addProduct" runat="server" CssClass="table table-bordered" DataKeyNames="id" AutoGenerateColumns="false" OnSelectedIndexChanged="gv_addProduct_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="true" />
                    <asp:BoundField DataField="id" HeaderText="Id" ReadOnly="true" />
                    <asp:BoundField DataField="brandname" HeaderText="Brand" />
                    <asp:BoundField DataField="shoemodel" HeaderText="Model" />
                    <asp:BoundField DataField="category" HeaderText="Category" />
                    <asp:BoundField DataField="purchasedate" HeaderText="Date Of Purchase" />
                    <asp:BoundField DataField="numberofunits" HeaderText="Number Of Units" />
                    <asp:BoundField DataField="amount" HeaderText="Amount" />
                </Columns>
            </asp:GridView>

        </div>
        <asp:Label ID="lbl_id" runat="server" Visible="false" />


        <!--Grid View End -->
        <br />
        <br />
        <br />

        <div class="text-center">

            <asp:Label ID="lbl_Billing" runat="server" Text="Add Billing" CssClass="font-weight-bold" />

        </div>
        <br />
        <br />
        <!-- End Add Product Area -->

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
