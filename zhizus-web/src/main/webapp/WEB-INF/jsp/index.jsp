<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title>ZHIZU SHOP</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">
  <link href="/favicon.ico" rel="SHORTCUT ICON" type="image/ico">

  <!-- Fonts START -->
  <%--<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700&subset=all" rel="stylesheet" type="text/css">--%>
  <%--<link href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow&subset=all" rel="stylesheet" type="text/css">--%>
  <%--<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->--%>
  <!-- Fonts END -->

  <!-- Global styles START -->
  <link href="http://res.zhizus.com/ecommerce/template/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="http://res.zhizus.com/ecommerce/template/assets/plugins/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
  <!-- Global styles END -->

  <!-- Page level plugin styles START -->
  <link href="http://res.zhizus.com/ecommerce/template/assets/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet">
  <link href="http://res.zhizus.com/ecommerce/template/assets/plugins/bxslider/jquery.bxslider.css" rel="stylesheet">
  <link rel="stylesheet" href="http://res.zhizus.com/ecommerce/template/assets/plugins/layerslider/css/layerslider.css" type="text/css">
  <!-- Page level plugin styles END -->

  <!-- Theme styles START -->
  <link href="http://res.zhizus.com/ecommerce/template/assets/css/style-metronic.css" rel="stylesheet" type="text/css">
  <link href="http://res.zhizus.com/ecommerce/template/assets/css/style.css" rel="stylesheet" type="text/css">
  <link href="http://res.zhizus.com/ecommerce/template/assets/css/style-responsive.css" rel="stylesheet" type="text/css">
  <link href="http://res.zhizus.com/ecommerce/template/assets/css/custom.css" rel="stylesheet" type="text/css">
  <!-- Theme styles END -->
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body>

<jsp:include page="commons/header.jsp"></jsp:include>
<jsp:include page="commons/slider.jsp"></jsp:include>

<div class="main">
  <div class="container">
    <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
    <div class="row margin-bottom-40">
      <!-- BEGIN SALE PRODUCT -->
      <div class="col-md-12 sale-product">
        <h2>New Arrivals</h2>
        <div class="bxslider-wrapper">
          <ul class="bxslider" data-slides-phone="1" data-slides-tablet="2" data-slides-desktop="5" data-slide-margin="15">
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/model1.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/model1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                <div class="sticker sticker-sale"></div>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/model2.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/model2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress2</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/model6.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/model6.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress2</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/model4.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/model4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="#">Berry Lace Dress4</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                <div class="sticker sticker-new"></div>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/model5.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/model5.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress5</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/model3.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/model3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress3</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/model7.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/model7.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress3</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <!-- END SALE PRODUCT -->
    </div>
    <!-- END SALE PRODUCT & NEW ARRIVALS -->

    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40 ">
      <!-- BEGIN SIDEBAR -->
      <div class="sidebar col-md-3 col-sm-4">
        <ul class="list-group margin-bottom-25 sidebar-menu">
          <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Ladies</a></li>
          <li class="list-group-item clearfix dropdown">
            <a href="javascript:void(0);">
              <i class="fa fa-angle-right"></i>
              Mens
              <i class="fa fa-angle-down"></i>
            </a>
            <ul class="dropdown-menu">
              <li class="list-group-item dropdown clearfix">
                <a href="javascript:void(0);"><i class="fa fa-circle"></i> Shoes <i class="fa fa-angle-down"></i></a>
                <ul class="dropdown-menu">
                  <li class="list-group-item dropdown clearfix">
                    <a href="javascript:void(0);"><i class="fa fa-circle"></i> Classic <i class="fa fa-angle-down"></i></a>
                    <ul class="dropdown-menu">
                      <li><a href="product-list.html"><i class="fa fa-circle"></i> Classic 1</a></li>
                      <li><a href="product-list.html"><i class="fa fa-circle"></i> Classic 2</a></li>
                    </ul>
                  </li>
                  <li class="list-group-item dropdown clearfix">
                    <a href="javascript:void(0);"><i class="fa fa-circle"></i> Sport  <i class="fa fa-angle-down"></i></a>
                    <ul class="dropdown-menu">
                      <li><a href="product-list.html"><i class="fa fa-circle"></i> Sport 1</a></li>
                      <li><a href="product-list.html"><i class="fa fa-circle"></i> Sport 2</a></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li><a href="product-list.html"><i class="fa fa-circle"></i> Trainers</a></li>
              <li><a href="product-list.html"><i class="fa fa-circle"></i> Jeans</a></li>
              <li><a href="product-list.html"><i class="fa fa-circle"></i> Chinos</a></li>
              <li><a href="product-list.html"><i class="fa fa-circle"></i> T-Shirts</a></li>
            </ul>
          </li>
          <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Kids</a></li>
          <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Accessories</a></li>
          <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Sports</a></li>
          <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Brands</a></li>
          <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Electronics</a></li>
          <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Home & Garden</a></li>
          <li class="list-group-item clearfix"><a href="product-list.html"><i class="fa fa-angle-right"></i> Custom Link</a></li>
        </ul>
      </div>
      <!-- END SIDEBAR -->
      <!-- BEGIN CONTENT -->
      <div class="col-md-9 col-sm-8">
        <h2>Three items</h2>
        <div class="bxslider-wrapper">
          <ul class="bxslider" data-slides-phone="1" data-slides-tablet="2" data-slides-desktop="3" data-slide-margin="15">
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                <div class="sticker sticker-new"></div>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress2</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress3</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress4</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
                <div class="sticker sticker-sale"></div>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress5</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress6</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->

    <!-- BEGIN TWO PRODUCTS & PROMO -->
    <div class="row margin-bottom-35 ">
      <!-- BEGIN TWO PRODUCTS -->
      <div class="col-md-6 two-items-bottom-items">
        <h2>Two items</h2>
        <div class="bxslider-wrapper">
          <ul class="bxslider" data-slides-phone="1" data-slides-tablet="2" data-slides-desktop="2" data-slide-margin="15">
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
            <li>
              <div class="product-item">
                <div class="pi-img-wrapper">
                  <img src="http://res.zhizus.com/ecommerce/template/assets/temp/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">
                  <div>
                    <a href="http://res.zhizus.com/ecommerce/template/assets/temp/products/k3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                    <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                  </div>
                </div>
                <h3><a href="item.html">Berry Lace Dress</a></h3>
                <div class="pi-price">$29.00</div>
                <a href="#" class="btn btn-default add2cart">Add to cart</a>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <!-- END TWO PRODUCTS -->
      <!-- BEGIN PROMO -->
      <div class="col-md-6">
        <div class="content-slider">
          <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="item active">
                <img src="http://res.zhizus.com/ecommerce/template/assets/temp/index-sliders/slide1.jpg" class="img-responsive" alt="Berry Lace Dress">
              </div>
              <div class="item">
                <img src="http://res.zhizus.com/ecommerce/template/assets/temp/index-sliders/slide2.jpg" class="img-responsive" alt="Berry Lace Dress">
              </div>
              <div class="item">
                <img src="http://res.zhizus.com/ecommerce/template/assets/temp/index-sliders/slide3.jpg" class="img-responsive" alt="Berry Lace Dress">
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- END PROMO -->
    </div>
    <!-- END TWO PRODUCTS & PROMO -->
  </div>
</div>
<jsp:include page="commons/footer.jsp"></jsp:include>

<!-- Load javascripts at bottom, this will reduce page load time -->
<!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
<!--[if lt IE 9]>
<script src="http://res.zhizus.com/ecommerce/template/assets/plugins/respond.min.js"></script>
<![endif]-->
<script src="http://res.zhizus.com/ecommerce/template/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="http://res.zhizus.com/ecommerce/template/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="http://res.zhizus.com/ecommerce/template/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script type="text/javascript" src="http://res.zhizus.com/ecommerce/template/assets/plugins/back-to-top.js"></script>
<script type="text/javascript" src="http://res.zhizus.com/ecommerce/template/assets/plugins/jQuery-slimScroll/jquery.slimscroll.min.js"></script>
<!-- END CORE PLUGINS -->

<!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
<script type="text/javascript" src="http://res.zhizus.com/ecommerce/template/assets/plugins/fancybox/source/jquery.fancybox.pack.js"></script><!-- pop up -->
<script type="text/javascript" src="http://res.zhizus.com/ecommerce/template/assets/plugins/bxslider/jquery.bxslider.min.js"></script><!-- slider for products -->
<script type="text/javascript" src='http://res.zhizus.com/ecommerce/template/assets/plugins/zoom/jquery.zoom.min.js'></script><!-- product zoom -->
<script src="http://res.zhizus.com/ecommerce/template/assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->

<!-- BEGIN LayerSlider -->
<script src="http://res.zhizus.com/ecommerce/template/assets/plugins/layerslider/jQuery/jquery-easing-1.3.js" type="text/javascript"></script>
<script src="http://res.zhizus.com/ecommerce/template/assets/plugins/layerslider/jQuery/jquery-transit-modified.js" type="text/javascript"></script>
<script src="http://res.zhizus.com/ecommerce/template/assets/plugins/layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
<script src="http://res.zhizus.com/ecommerce/template/assets/plugins/layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>
<!-- END LayerSlider -->

<script type="text/javascript" src="http://res.zhizus.com/ecommerce/template/assets/scripts/app.js"></script>
<script type="text/javascript" src="http://res.zhizus.com/ecommerce/template/assets/scripts/index.js"></script>
<script type="text/javascript">
  jQuery(document).ready(function() {
    App.init();
    App.initBxSlider();
    Index.initLayerSlider();
    App.initImageZoom();
    App.initTouchspin();
  });
</script>
<!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>
