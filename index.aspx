<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ShoeMart.index" %>

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
					<a class="navbar-brand logo_h" href="index.aspx"><img src="img/logo6.png" alt=""></a>
					<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
					 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
						<ul class="nav navbar-nav menu_nav ml-auto">
							<li class="nav-item active"><a class="nav-link" href="index.aspx">Home</a></li>
							<li class="nav-item submenu dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
								 aria-expanded="false">Shop</a>
								<ul class="dropdown-menu">
									<li class="nav-item"><a class="nav-link" href="category.aspx">Shop Category</a></li>
									<li class="nav-item"><a class="nav-link" href="productdetails.aspx">Product Details</a></li>
									<li class="nav-item"><a class="nav-link" href="addproduct.aspx">Add Product</a></li>
									<%--<li class="nav-item"><a class="nav-link" href="confirmation.aspx">Confirmation</a></li>--%>
								</ul>
							</li>
						    <li class="nav-item"><a class="nav-link" href="order.aspx">Order</a></li>
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

	<!-- start banner Area -->
	<section class="banner-area">
		<div class="container">
			<div class="row fullscreen align-items-center justify-content-start">
				<div class="col-lg-12">
					<div class="active-banner-slider owl-carousel">
						<!-- single-slide -->
						<div class="row single-slide align-items-center d-flex">
							<div class="col-lg-5 col-md-6">
								<div class="banner-content">
									<h1>Nike New <br>Collection!</h1>
									<p>Don't be surprised if your other kicks get jealous. With autumn-friendly neutrals, like Cave Stone and Black, these AJ4s come together for a shoe that completes every 'fit.
										We couldn't just make a perfectly wearable shoe though, so check the heel for a little something special.</p>
								</div>
							</div>
							<div class="col-lg-7">
								<div class="banner-img">
									<img class="img-fluid" src="img/banner/banner-img.png" alt="">
								</div>
							</div>
						</div>
						<!-- single-slide -->
						<div class="row single-slide">
							<div class="col-lg-5">
								<div class="banner-content">
									<h1>Brooks New <br>Collection!</h1>
									<p>Brooks Sports, Inc., also known as Brooks Running, is an American sports equipment company that designs and markets high-performance men's and women's sneakers, clothing, and accessories.</p>
								</div>
							</div>
							<div class="col-lg-7">
								<div class="banner-img">
									<img class="img-fluid" src="img/banner/banner-img3.png" alt="">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- start features Area -->
	<section class="features-area section_gap">
		<div class="container">
			<div class="row features-inner">
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon1.png" alt="">
						</div>
						<h6>Free Delivery</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon2.png" alt="">
						</div>
						<h6>Return Policy</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon3.png" alt="">
						</div>
						<h6>24/7 Support</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
				<!-- single features -->
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-features">
						<div class="f-icon">
							<img src="img/features/f-icon4.png" alt="">
						</div>
						<h6>Secure Payment</h6>
						<p>Free Shipping on all order</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end features Area -->

	<!-- Start category Area -->
	<section class="category-area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 col-md-12">
					<div class="row">
						<div class="col-lg-8 col-md-8">
							<div class="single-deal">
								<div class="overlay"></div>
								<img class="img-fluid w-100" src="img/category/c1.jpg" alt="">
								<a href="img/category/c1.jpg" class="img-pop-up" target="_blank">
									<div class="deal-details">
										<h6 class="deal-title">Sneaker for Sports</h6>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="single-deal">
								<div class="overlay"></div>
								<img class="img-fluid w-100" src="img/category/c2.jpg" alt="">
								<a href="img/category/c2.jpg" class="img-pop-up" target="_blank">
									<div class="deal-details">
										<h6 class="deal-title">Sneaker for Men</h6>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-4 col-md-4">
							<div class="single-deal">
								<div class="overlay"></div>
								<img class="img-fluid w-100" src="img/category/c3.jpg" alt="">
								<a href="img/category/c3.jpg" class="img-pop-up" target="_blank">
									<div class="deal-details">
										<h6 class="deal-title">Product for Couple</h6>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-8 col-md-8">
							<div class="single-deal">
								<div class="overlay"></div>
								<img class="img-fluid w-100" src="img/category/c4.jpg" alt="">
								<a href="img/category/c4.jpg" class="img-pop-up" target="_blank">
									<div class="deal-details">
										<h6 class="deal-title">Sneaker for Women</h6>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-deal">
						<div class="overlay"></div>
						<img class="img-fluid w-100" src="img/category/c5.jpg" alt="">
						<a href="img/category/c5.jpg" class="img-pop-up" target="_blank">
							<div class="deal-details">
								<h6 class="deal-title">Offer Product</h6>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End category Area -->

	<!-- start product Area -->
	<section class="owl-carousel active-product-area section_gap">
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>Latest Products</h1>
							<p>Nike doesn't have a single "latest" product, but some of their most recent offerings include the Nike Vomero 18, a max-cushion 
								running shoe, and new colorways and variations of iconic lines like the Air Max DN and the Air Force.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- single product 1-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p1.jpg" alt="">
							<div class="product-details">
								<h6>MENS AIR JORDAN 4 RETRO OG
                                    FV5029-200</h6>
								<div class="price">
									<h6>$1200.00</h6>
									<h6 class="l-through">$1500.00</h6>
								</div>
					
							</div>
						</div>
					</div>
					<!-- single product 2-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p2.jpg" alt="">
							<div class="product-details">
								<h6>BIG KIDS' AIR JORDAN 4 RETRO OG
                                    IB4171-200</h6>
								<div class="price">
									<h6>$999.00</h6>
									<h6 class="l-through">$1210.00</h6>
								</div>
					
							</div>
						</div>
					</div>
					<!-- single product 3-->
					<div class="col-lg-3 col-md-6">
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
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p4.jpg" alt="">
							<div class="product-details">
								<h6>WOMENS JORDAN 1 HIGH OG
									FD2596-200
								</h6>
								<div class="price">
									<h6>$950.00</h6>
									<h6 class="l-through">$1300.00</h6>
								</div>
						
							</div>
						</div>
					</div>
					<!-- single product 5-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p5.jpg" alt="">
							<div class="product-details">
								<h6>Nike Pegasus 41 Tokyo World Athletics</h6>
								<div class="price">
									<h6>$500.00</h6>
									<h6 class="l-through">$700.00</h6>
								</div>
						
							</div>
						</div>
					</div>
					<!-- single product 6-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p6.jpg" alt="">
							<div class="product-details">
								<h6>Nike Alphafly 3 'The Sting' - International Running Pack</h6>
								<div class="price">
									<h6>$799.00</h6>
									<h6 class="l-through">$1000.00</h6>
								</div>
							
							</div>
						</div>
					</div>
					<!-- single product 7-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p7.jpg" alt="">
							<div class="product-details">
								<h6>Nike Dunk Low Harris Tweed Sesame (W)</h6>
								<div class="price">
									<h6>$1500.00</h6>
									<h6 class="l-through">$2100.00</h6>
								</div>
						
							</div>
						</div>
					</div>
					<!-- single product 8-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p8.jpg" alt="">
							<div class="product-details">
								<h6>Nike Air Force 1 Low Exoskeletal</h6>
								<div class="price">
									<h6>$900.00</h6>
									<h6 class="l-through">$1100.00</h6>
								</div>
						
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- single product slide -->
		<div class="single-product-slider">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6 text-center">
						<div class="section-title">
							<h1>Coming Products</h1>
							<p>At The Drop Date, you'll find all of the latest and upcoming sneaker releases with all of the information you'll ever need, from photos to sizes to availability.
								Sign up for Sneaker Raffles and stay informed on popular colorway restocks!.</p>
						</div>
					</div>
				</div>
				<div class="row">
					<!-- single product 9-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p9.jpg" alt="">
							<div class="product-details">
								<h6>CATAMOUNT AGIL Unisex running shoes</h6>
								<div class="price">
									<h6>$4000.00</h6>
									<h6 class="l-through">$5100.00</h6>
								</div>
							
							</div>
						</div>
					</div>
					<!-- single product 10-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p13.jpg" alt="">
							<div class="product-details">
								<h6>Galaxis Pro Men's Boost Running Shoes</h6>
								<div class="price">
									<h6>$2500.00</h6>
									<h6 class="l-through">$3000.00</h6>
								</div>
						
							</div>
						</div>
					</div>
					<!-- single product 11-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p10.jpg" alt="">
							<div class="product-details">
								<h6>X-Ray 2 Square Retro Style Sneakers</h6>
								<div class="price">
									<h6>$1500.00</h6>
									<h6 class="l-through">$2100.00</h6>
								</div>
							
							</div>
						</div>
					</div>
					<!-- single product 12-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p12.jpg" alt="">
							<div class="product-details">
								<h6>FUEGO Men’s Responsive Cushioned Running Shoes</h6>
								<div class="price">
									<h6>$1100.00</h6>
									<h6 class="l-through">$1600.00</h6>
								</div>
							
							</div>
						</div>
					</div>
					<!-- single product 13-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p11.jpg" alt="">
							<div class="product-details">
								<h6>Hyperglide X FusionLite Everyday Running Shoes</h6>
								<div class="price">
									<h6>$1999.00</h6>
									<h6 class="l-through">$2100.00</h6>
								</div>
						
							</div>
						</div>
					</div>
					<!-- single product 14-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p14.jpg" alt="">
							<div class="product-details">
								<h6>Adrenaline GTS 23 - India Fit - Men's (Narrow Width)</h6>
								<div class="price">
									<h6>$900.00</h6>
									<h6 class="l-through">$1400.00</h6>
								</div>
							
							</div>
						</div>
					</div>
					<!-- single product 15-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p15.jpg" alt="">
							<div class="product-details">
								<h6>Glycerin 21 - Women's Road Running Shoes</h6>
								<div class="price">
									<h6>$1000.00</h6>
									<h6 class="l-through">$1200.00</h6>
								</div>
								
							</div>
						</div>
					</div>
					<!-- single product 16-->
					<div class="col-lg-3 col-md-6">
						<div class="single-product">
							<img class="img-fluid" src="img/product/p16.jpg" alt="">
							<div class="product-details">
								<h6>Glycerin 21 - Women's Road Running Shoes</h6>
								<div class="price">
									<h6>$1599.00</h6>
									<h6 class="l-through">$1999.00</h6>
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end product Area -->

	<!-- Start exclusive deal Area -->
	<section class="exclusive-deal-area">
		<div class="container-fluid">
			<div class="row justify-content-center align-items-center">
				<div class="col-lg-6 no-padding exclusive-left">
					<div class="row clock_sec clockdiv" id="clockdiv">
						<div class="col-lg-12">
							<h1>Exclusive Hot Deal Ends Soon!</h1>
							<p>Who are in extremely love with eco friendly system.</p>
						</div>
						<div class="col-lg-12">
							<div class="row clock-wrap">
								<div class="col clockinner1 clockinner">
									<h1 class="days">150</h1>
									<span class="smalltext">Days</span>
								</div>
								<div class="col clockinner clockinner1">
									<h1 class="hours">23</h1>
									<span class="smalltext">Hours</span>
								</div>
								<div class="col clockinner clockinner1">
									<h1 class="minutes">47</h1>
									<span class="smalltext">Mins</span>
								</div>
								<div class="col clockinner clockinner1">
									<h1 class="seconds">59</h1>
									<span class="smalltext">Secs</span>
								</div>
							</div>
						</div>
					</div>
					<%--<a href="" class="primary-btn">Shop Now</a>--%>
				</div>
				<div class="col-lg-6 no-padding exclusive-right">
					<div class="active-exclusive-product-slider">
						<!-- single exclusive carousel -->
						<div class="single-exclusive-slider">
							<img class="img-fluid" src="img/product/e-p1.png" alt="">
							<div class="product-details">
								<div class="price">
									<h6>$1299.00</h6>
									<h6 class="l-through">$1999.00</h6>
								</div>
								<h4>addidas New Hammer sole
									for Sports person</h4>
								<%--<div class="add-bag d-flex align-items-center justify-content-center">
									<a class="add-btn" href=""><span class="ti-bag"></span></a>
									<span class="add-text text-uppercase">Add to Bag</span>
								</div>--%>
							</div>
						</div>
						<!-- single exclusive carousel -->
						<div class="single-exclusive-slider">
							<img class="img-fluid" src="img/product/e-p2.jpeg" alt="">
							<div class="product-details">
								<div class="price">
									<h6>$1199.00</h6>
									<h6 class="l-through">$1499.00</h6>
								</div>
								<h4>FUEGO Profoam Men’s Responsive Cushioned Running Shoes</h4>
								<%--<div class="add-bag d-flex align-items-center justify-content-center">
									<a class="add-btn" href=""><span class="ti-bag"></span></a>
									<span class="add-text text-uppercase">Add to Bag</span>
								</div>--%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End exclusive deal Area -->

	<!-- Start brand Area -->
	<section class="brand-area section_gap">
		<div class="container">
			<div class="row">
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="img/brand/1.png" alt="">
				</a>
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="img/brand/2.png" alt="">
				</a>
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="img/brand/3.png" alt="">
				</a>
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="img/brand/4.png" alt="">
				</a>
				<a class="col single-img" href="#">
					<img class="img-fluid d-block mx-auto" src="img/brand/5.png" alt="">
				</a>
			</div>
		</div>
	</section>
	<!-- End brand Area -->

	<!-- Start related-product Area -->
	<section class="related-product-area section_gap_bottom">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6 text-center">
					<div class="section-title">
						<h1>Deals of the Week</h1>
						<p>Now in improv you can have strong offers or weak offers. 
						A weak offer is something that is really vague, it's not clear and it doesn't move anything forward.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-9">
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a><img src="img/r1.jpg" alt=""></a>
								<div class="desc">
									<a  class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a ><img src="img/r2.jpg" alt=""></a>
								<div class="desc">
									<a class="title">Black T-Shirt</a>
									<div class="price">
										<h6>$200.00</h6>
										<h6 class="l-through">$240.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a><img src="img/r3.jpg" alt=""></a>
								<div class="desc">
									<a class="title">Black Women sleeveless</a>
									<div class="price">
										<h6>$220.00</h6>
										<h6 class="l-through">$250.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a ><img src="img/r5.jpg" alt=""></a>
								<div class="desc">
									<a class="title">Blue Top</a>
									<div class="price">
										<h6>$180.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a><img src="img/r6.jpg" alt=""></a>
								<div class="desc">
									<a class="title">Black lace Heels</a>
									<div class="price">
										<h6>$189.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6 mb-20">
							<div class="single-related-product d-flex">
								<a ><img src="img/r7.jpg" alt=""></a>
								<div class="desc">
									<a class="title">Men Half Sleeve</a>
									<div class="price">
										<h6>$290.00</h6>
										<h6 class="l-through">$320.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a ><img src="img/r9.jpg" alt=""></a>
								<div class="desc">
									<a class="title">Men Full Sleeve</a>
									<div class="price">
										<h6>$250.00</h6>
										<h6 class="l-through">$280.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a ><img src="img/r10.jpg" alt=""></a>
								<div class="desc">
									<a class="title">Black Full Sleeve</a>
									<div class="price">
										<h6>$240.00</h6>
										<h6 class="l-through">$280.00</h6>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-6">
							<div class="single-related-product d-flex">
								<a><img src="img/r11.jpg" alt=""></a>
								<div class="desc">
									<a class="title">White lace Heels</a>
									<div class="price">
										<h6>$150.00</h6>
										<h6 class="l-through">$210.00</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3">
					<div class="ctg-right">
						<a target="_blank">
							<img class="img-fluid d-block mx-auto" src="img/category/c5.jpg" alt="">
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End related-product Area -->

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
							<li><img src="img/i1.jpg" alt=""></li>
							<li><img src="img/i2.jpg" alt=""></li>
							<li><img src="img/i3.jpg" alt=""></li>
							<li><img src="img/i4.jpg" alt=""></li>
							<li><img src="img/i5.jpg" alt=""></li>
							<li><img src="img/i6.jpg" alt=""></li>
							<li><img src="img/i7.jpg" alt=""></li>
							<li><img src="img/i8.jpg" alt=""></li>
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
	<script src="js/countdown.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/main.js"></script>


    </form>
</body>
</html>
