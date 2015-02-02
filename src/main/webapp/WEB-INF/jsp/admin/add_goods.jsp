<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en"> <!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8"/>
  <title>知足shop | 后台管理系统</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta content="width=device-width, initial-scale=1" name="viewport"/>
  <meta content="" name="description"/>
  <meta content="" name="author"/>
  <!-- BEGIN GLOBAL MANDATORY STYLES -->

  <%--<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>--%>
  <link href="http://res.zhizus.com/admin/template/assets/plugins/font-awesome/css/font-awesome.min.css"
        rel="stylesheet" type="text/css"  data-noprefix/>
  <link href="http://res.zhizus.com/admin/template/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet"
        type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet"
        type="text/css"/>
  <!-- END GLOBAL MANDATORY STYLES -->
  <!-- BEGIN PAGE LEVEL STYLES -->
  <link rel="stylesheet" type="text/css"
        href="http://res.zhizus.com/admin/template/assets/plugins/select2/select2.css"/>
  <link rel="stylesheet" type="text/css"
        href="http://res.zhizus.com/admin/template/assets/plugins/select2/select2-metronic.css"/>
  <link rel="stylesheet" href="http://res.zhizus.com/admin/template/assets/plugins/data-tables/DT_bootstrap.css"/>
  <!-- END PAGE LEVEL STYLES -->
  <!-- BEGIN THEME STYLES -->
  <link href="http://res.zhizus.com/admin/template/assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/css/style.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/css/themes/light.css" rel="stylesheet" type="text/css"
        id="style_color"/>
  <link href="http://res.zhizus.com/admin/template/assets/css/custom.css" rel="stylesheet" type="text/css"/>
  <!-- END THEME STYLES -->
  <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<%--<body class="page-header-fixed">--%>
<%--<jsp:include page="commons/header.jsp"></jsp:include>--%>
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
  <jsp:include page="commons/slider.jsp"></jsp:include>
  <!-- BEGIN CONTENT -->
  <div class="page-content-wrapper">
    <div class="page-content">
      <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->


      <div class="row">
        <div class="col-md-12">
          <!-- BEGIN EXAMPLE TABLE PORTLET-->
          <div class="portlet box light-grey">
            <div class="portlet-title">
              <div class="caption">
                <i class="fa fa-globe"></i>添加商品
              </div>

            </div>
            <div class="portlet-body">
              <form action="/admin/goods/add" class="form-horizontal" method="post">
                <div class="form-body">
                  <div class="form-group">
                    <label class="col-md-3 control-label">商品名称</label>
                    <div class="col-md-4">
                      <input type="text" id="name" name="name" class="form-control" placeholder="名称"><span class="help-block"></span>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-md-3 control-label">商品类别</label>
                    <div class="col-md-2">
                      <select id="category" name="pid" class="form-control input-small"  name="category">
                      </select>
                    </div>
                    <div class="col-md-2">
                      <select id="children-category" name="cid" class="form-control input-small">
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-md-3 control-label">原价</label>
                    <div class="col-md-4">
                      <input type="text" id="price0" name="price0" class="form-control" >
														<span class="help-block">
														</span>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-md-3 control-label">零售价</label>
                    <div class="col-md-4">
                        <input type="text" id="price" name="price" class="form-control">
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-md-3 control-label">批发价</label>
                    <div class="col-md-4">
                      <input type="text" id="price3" name="price3" class="form-control">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-md-3 control-label">商品描述</label>
                    <div class="col-md-4">
                      <textarea id="desc" name="desc" rows="5" name="desc" class="form-control"></textarea>
                    </div>
                  </div>

                </div>
                <div class="form-actions fluid">
                  <div class="col-md-offset-3 col-md-9">
                    <button type="submit" class="btn blue">Submit</button>
                    <button type="button" class="btn default">Cancel</button>
                  </div>
                </div>
              </form>

            </div>
          </div>
          <!-- END EXAMPLE TABLE PORTLET-->
        </div>
      </div>





      </div>
    </div>
    <!-- END CONTENT -->
  </div>
</div>
<!-- END CONTAINER -->
<jsp:include page="commons/footer.jsp"></jsp:include>
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="http://res.zhizus.com/admin/template/assets/plugins/respond.min.js"></script>
<script src="http://res.zhizus.com/admin/template/assets/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="http://res.zhizus.com/admin/template/assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="http://res.zhizus.com/admin/template/assets/plugins/jquery-migrate-1.2.1.min.js"
        type="text/javascript"></script>
<script src="http://res.zhizus.com/admin/template/assets/plugins/bootstrap/js/bootstrap.min.js"
        type="text/javascript"></script>
<script src="http://res.zhizus.com/admin/template/assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"
        type="text/javascript"></script>
<script src="http://res.zhizus.com/admin/template/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js"
        type="text/javascript"></script>
<script src="http://res.zhizus.com/admin/template/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="http://res.zhizus.com/admin/template/assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="http://res.zhizus.com/admin/template/assets/plugins/uniform/jquery.uniform.min.js"
        type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript"
        src="http://res.zhizus.com/admin/template/assets/plugins/select2/select2.min.js"></script>
<script type="text/javascript"
        src="http://res.zhizus.com/admin/template/assets/plugins/data-tables/jquery.dataTables.js"></script>
<script type="text/javascript"
        src="http://res.zhizus.com/admin/template/assets/plugins/data-tables/DT_bootstrap.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script type="text/javascript" src="http://res.zhizus.com/admin/template/assets/scripts/core/app.js"></script>
<script src="http://res.zhizus.com/admin/template/assets/scripts/custom/table-managed.js"></script>

<script>
  jQuery(document).ready(function () {
    App.init();
    //TableManaged.init();

    $.post("/admin/category/getCategoryNamesById",
        {pid: '0'},
        function (data, status) {
          for (var i = 0; i < data.length; i++) {
            $("#category").append("<option value=" + data[i].cid + ">" + data[i].name + "</option>");
          }
          // init
          setChildrenSelect(data[0].cid);

     });



    $("#category").change(function(){
      $("#children-category option").remove();
      var pid = $(this).val();
      setChildrenSelect(pid);
    });

    function setChildrenSelect(pid){
      $.post("/admin/category/getCategoryNamesById",
          {pid: pid},
          function (data, status) {
            for (var i = 0; i < data.length; i++) {
              $("#children-category").append("<option value=" + data[i].cid + ">" + data[i].name + "</option>");
            }
          });
    }



  });
</script>
</body>
<!-- END BODY -->
</html>
