<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

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
  <link href="http://res.zhizus.com/admin/template/assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
  <!-- END GLOBAL MANDATORY STYLES -->
  <!-- BEGIN PAGE LEVEL STYLES -->
  <link rel="stylesheet" type="text/css" href="http://res.zhizus.com/admin/template/assets/plugins/select2/select2.css"/>
  <link rel="stylesheet" type="text/css" href="http://res.zhizus.com/admin/template/assets/plugins/select2/select2-metronic.css"/>
  <link rel="stylesheet" href="http://res.zhizus.com/admin/template/assets/plugins/data-tables/DT_bootstrap.css"/>
  <!-- END PAGE LEVEL STYLES -->
  <!-- BEGIN THEME STYLES -->
  <link href="http://res.zhizus.com/admin/template/assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/css/style.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/css/plugins.css" rel="stylesheet" type="text/css"/>
  <link href="http://res.zhizus.com/admin/template/assets/css/themes/light.css" rel="stylesheet" type="text/css" id="style_color"/>
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
                <i class="fa fa-globe"></i>商品类别
              </div>
              <div class="tools">
                <a href="javascript:;" class="collapse">
                </a>
                <a href="#portlet-config" data-toggle="modal" class="config">
                </a>
                <a href="javascript:;" class="reload">
                </a>
                <a href="javascript:;" class="remove">
                </a>
              </div>
            </div>
            <div class="portlet-body">
              <div class="table-toolbar">
                <div class="btn-group">
                  <a id="sample_editable_1_new" href="#basic" data-toggle="modal" class="btn green">
                      <span class="title">
                          新增<i class="fa fa-plus"></i>
                      </span>
                  </a>
                </div>
                <div class="btn-group pull-right">
                  <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i class="fa fa-angle-down"></i>
                  </button>
                  <ul class="dropdown-menu pull-right">
                    <li>
                      <a href="#">
                        Print
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        Save as PDF
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        Export to Excel
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <table class="table table-striped table-bordered table-hover" id="sample_1">
                <thead>
                <tr>
                  <th class="table-checkbox">
                    <input type="checkbox" class="group-checkable" data-set="#sample_1 .checkboxes"/>
                  </th>
                  <th width="20%">
                    类别
                  </th>
                  <th width="20%">
                    更新时间
                  </th>
                  <th width="30%">
                    描述
                  </th>
                  <th>
                    Edit
                  </th>
                  <th>
                    Delete
                  </th>
                </tr>

                </thead>
                <tbody>
                <c:forEach var="category" items="${categorys}">
                  <tr class="odd gradeX">
                    <td>
                      <input type="checkbox" class="checkboxes" value="1"/>
                    </td>
                    <td>
                     <a  href="/admin/category/list?pid=${category.cid}">
                      ${category.name}
                    </a>

                    </td>
                    <td>
                        ${category.updateTime}
                    </td>
                    <td>
                        ${category.desc}
                    </td>

                    <td>
                      <a class="edit" data-id="${category.cid}" data-toggle="modal" href="#basic" >
                        Edit
                      </a>
                    </td>
                    <td>
                      <a class="delete" data-id="${category.cid}" href="javascript:;">
                        Delete
                      </a>
                    </td>
                  </tr>
                </c:forEach>
                </tbody>



              </table>
            </div>
          </div>
          <!-- END EXAMPLE TABLE PORTLET-->
        </div>
      </div>


      <div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
              <h4 class="modal-title">添加商品类别</h4>
            </div>
            <div class="modal-body">

              <input type="hidden" id="pid" value="${param.pid}">
              <div id="parent-category-div" class="form-group" style="display:none">
                <label class="col-md-3 control-label" >父类名:</label>
                <div class="col-md-7">
                  <output id="parent-category-label" name="name" type="text" class="form-control" value=""/>
                </div>
              </div>
              <div class="form-group">
                <label class="col-md-3 control-label" >类名:</label>
                <div class="col-md-7">
                  <input id="name" name="name" type="text" class="form-control" value="">
                </div>
              </div>
              <br>
              <br>
              <div class="form-group">
                <label class="col-md-3 control-label" >描述:</label>
                <div class="col-md-7">
                   <textarea id="desc" name="desc" class="form-control"  rows="2" data-value=""></textarea>
                </div>
              </div>

              <br>
              <br>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn default" data-dismiss="modal">取消</button>
              <button id="category-btn" type="button" class="btn blue">保存</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
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
  <script src="http://res.zhizus.com/admin/template/assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
  <script src="http://res.zhizus.com/admin/template/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <script src="http://res.zhizus.com/admin/template/assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
  <script src="http://res.zhizus.com/admin/template/assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
  <script src="http://res.zhizus.com/admin/template/assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
  <script src="http://res.zhizus.com/admin/template/assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
  <script src="http://res.zhizus.com/admin/template/assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
  <!-- END CORE PLUGINS -->
  <!-- BEGIN PAGE LEVEL PLUGINS -->
  <script type="text/javascript" src="http://res.zhizus.com/admin/template/assets/plugins/select2/select2.min.js"></script>
  <script type="text/javascript" src="http://res.zhizus.com/admin/template/assets/plugins/data-tables/jquery.dataTables.js"></script>
  <script type="text/javascript" src="http://res.zhizus.com/admin/template/assets/plugins/data-tables/DT_bootstrap.js"></script>
  <!-- END PAGE LEVEL PLUGINS -->
  <!-- BEGIN PAGE LEVEL SCRIPTS -->
  <script  type="text/javascript" src="http://res.zhizus.com/admin/template/assets/scripts/core/app.js"></script>
<script src="http://res.zhizus.com/admin/template/assets/scripts/custom/table-managed.js"></script>
<script  type="text/javascript" src="http://res.zhizus.com/admin/template/assets/scripts/custom/table-editable.js"></script>
  <script>
    jQuery(document).ready(function() {
      App.init();
      TableManaged.init();

      /**
       * 新增商品类别
       */
      $("#category-btn").click(function(){
        var name = $("#name").val();
        var desc = $("#desc").val();
        var pid = $("#pid").val();
        if(name==null){
          alert("name can not be null!");
        }
        $.post("/admin/category/add",
                {
                  name:name,
                  desc:desc,
                  pid:pid
                },

                function(data,status){
                  location.reload();
                });

      });

      $('#sample_1 a.delete').live('click', function (e) {
        e.preventDefault();
        if (confirm("Are you sure to delete this row ?") == false) {
          return;
        }
        var cid = $(this).attr("data-id");
        $.post("/admin/category/delete",
                { cid:cid },
                function(data,status){
                  location.reload();
                });
      });

      $('#sample_1 a.edit').live('click', function (e) {
        var cid = $(this).attr("data-id");
        $.post("/admin/category/getCategoryByCid",
                { cid:cid },
                function(data,status){
                  $("#name").val(data.result.name);
                  $("#desc").val(data.result.desc);
                });

      });

      $('#sample_editable_1_new').click(function(){
        var pid = '${param.pid}';
        $.post("/admin/category/getCategoryByCid",
                { cid:pid },
                function(data,status){
                  $("#parent-category-div").css("display","block");
                  $("#parent-category-label").val(data.result.name);
                });
      })



    });
  </script>
  </body>
  <!-- END BODY -->
</html>
