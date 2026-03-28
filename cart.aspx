<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="ShoeMart.cart" %>

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
                                   <%--     <li class="nav-item"><a class="nav-link" href="confirmation.aspx">Confirmation</a></li>--%>
                                    </ul>
                                </li>
                                <li class="nav-item"><a class="nav-link" href="order.aspx">Order</a></li>
                            <%--    <li class="nav-item"><a class="nav-link" href="login.aspx">Login</a></li>--%>
                                <li class="nav-item"><a class="nav-link" href="contact.aspx">Contact</a></li>
                                <li class="nav-item active"><a class="nav-link" href="cart.aspx"><span class="ti-bag"></span></a></li>
                                 <li class="nav-item"><a class="nav-link" href="login.aspx">Logout</a></li>
                            </ul>
                            <%--<ul class="nav navbar-nav navbar-right">
						
					</ul>--%>
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
                        <h1>Shopping Cart</h1>
                        <nav class="d-flex align-items-center">
                            <a href="index.aspx">Home</a>
                        </nav>
                    </div>
                </div>
            </div>
        </section>

        <br />
        <br />
        <br />
        <br />
        <br />
        <!-- End Banner Area -->

        <!--GridView Area Start-->

        <div class="container col-10 p-5 shadow-lg table-hover color-8">
            <asp:GridView ID="gv_Cart" runat="server" CssClass="table table-bordered" AutoGenerateColumns="false" OnRowCommand="gv_cart_row_Click">

                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID" />
                    <asp:BoundField DataField="brand" HeaderText="Brand" />
                    <asp:BoundField DataField="model" HeaderText="Model" />
                    <asp:BoundField DataField="price" HeaderText="Price" />
                    <asp:BoundField DataField="size" HeaderText="Size" />
                    <asp:ButtonField ButtonType="Button" Text="Remove" HeaderText="Action" CommandName="Delete1" ControlStyle-CssClass="btn btn-danger" />
                </Columns>

            </asp:GridView>
        </div>

        <br />
        <br />
        <br />
        <br />
        <br />

        <!--GridView Area End-->


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


        <!-------------------------------------------------------------------------------------->

        <%-- <div class="container">
    <div class="row mb-3">
        <div class="col">
            <asp:Label  runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txt_name" runat="server" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Name is Required" ControlToValidate="txt_name" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
        <div class="col">
            <asp:Label  runat="server" Text="Course"></asp:Label>
            <asp:DropDownList ID="ddl_course" runat="server" CssClass="form-select" DataTextField="Course" DataValueField="Course"></asp:DropDownList>
        </div>
    </div> 
    <div class="row mb-3">
        <div class="col">
              <asp:Label  runat="server" Text="Date Of Birth"></asp:Label>
              <asp:TextBox ID="txt_dob" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
              <asp:RequiredFieldValidator runat="server" ErrorMessage="DOB is Required" ControlToValidate="txt_name" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
        <div class="col">
            <asp:Label  runat="server" Text="Gender"></asp:Label> <br>
            <asp:RadioButton ID="rdo_male" Text="Male" Checked="true" GroupName="Gender" runat="server" />
            <asp:RadioButton ID="rdo_female" Text="Female" GroupName="Gender" runat="server" />
        </div>
    </div>
    <div class="row mb-3">
        <div class="col">
            <asp:Label  runat="server" Text="Email"></asp:Label>
            <asp:TextBox ID="txt_email" runat="server" TextMode="Email" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="Email is Required" ControlToValidate="txt_name" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
        <div class="col">
            <asp:Label  runat="server" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="txt_phonenumber" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ErrorMessage="PhoneNumber is Required" ControlToValidate="txt_name" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row mb-3">
        <div class="col">
             <asp:Label  runat="server" Text="Address"></asp:Label>
             <asp:TextBox ID="txt_address" runat="server" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ErrorMessage="Address is Required" ControlToValidate="txt_name" CssClass="text-danger"></asp:RequiredFieldValidator>
        </div>
        <div class="col">

        </div>
    </div>
    <div class="row mb-3">
        <div class="col">
            <asp:Button ID="btn_add" runat="server" Text="ADD" CssClass="btn btn-primary"/>
        </div>
        <div class="col">
            
        </div>
    </div>
</div>--%>


        <!------------------------------------------------------------------------------------->


    </form>
</body>
</html>
