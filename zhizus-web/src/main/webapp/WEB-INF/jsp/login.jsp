<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="resources" value="${pageContext.request.contextPath}/static" scope="session"/>
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

<div class="main">
  <div class="container">
    <ul class="breadcrumb">
      <li><a href="index.html">主页</a></li>
      <li><a href="">Store</a></li>
      <li class="active">登陆</li>
    </ul>
    <!-- BEGIN SIDEBAR & CONTENT -->
    <div class="row margin-bottom-40">
     <jsp:include page="commons/sliderbar.jsp"></jsp:include>

      <!-- BEGIN CONTENT -->
      <div class="col-md-9 col-sm-9">
        <h1>登陆</h1>
        <div class="content-form-page">
          <div class="row">
            <div class="col-md-7 col-sm-7">
              <form class="form-horizontal form-without-legend" role="form" action="/user/login">
                <div class="form-group">
                  <label for="email" class="col-lg-4 control-label">邮箱 <span class="require">*</span></label>
                  <div class="col-lg-8">
                    <input type="text" class="form-control" id="email" name="email">
                  </div>
                </div>
                <div class="form-group">
                  <label for="password" class="col-lg-4 control-label">密码 <span class="require">*</span></label>
                  <div class="col-lg-8">
                    <input type="password" class="form-control" id="password" name="password">
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-8 col-md-offset-4 padding-left-0">
                    <a href="forgotton-password.html">忘记密码?</a>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-20">
                    <button type="submit" class="btn btn-primary">登陆</button>
                  </div>
                </div>
                <div class="row">
                  <div class="col-lg-8 col-md-offset-4 padding-left-0 padding-top-10 padding-right-30">
                    <hr>
                    <div class="login-socio">
                      <p class="text-muted">第三方登陆:</p>
                      <ul class="social-icons">
                        <li><a href="#" data-original-title="facebook" class="facebook" title="qq"></a></li>
                        <li><a href="#" data-original-title="Twitter" class="twitter" title="微博"></a></li>
                      </ul>
                    </div>
                  </div>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>
      <!-- END CONTENT -->
    </div>
    <!-- END SIDEBAR & CONTENT -->
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
