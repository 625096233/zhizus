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
        rel="stylesheet" type="text/css"/>
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
    <div class="page-content" style="min-height:650px !important">
      <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
      <div class="modal fade" id="portlet-config" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
              <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
              Widget settings form goes here
            </div>
            <div class="modal-footer">
              <button type="button" class="btn blue">Save changes</button>
              <button type="button" class="btn default" data-dismiss="modal">Close</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <!-- /.modal -->
      <!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->


      <!-- BEGIN PAGE HEADER-->
      <div class="row">
        <div class="col-md-12">
          <!-- BEGIN PAGE TITLE & BREADCRUMB-->
          <h3 class="page-title">
            商品明细
          </h3>
          <ul class="page-breadcrumb breadcrumb">
            <li class="btn-group">
              <button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
							<span>
								设置
							</span>
                <i class="fa fa-angle-down"></i>
              </button>
              <ul class="dropdown-menu pull-right" role="menu">
                <li>
                  <a href="#">
                    设置推荐商品
                  </a>
                </li>
                <li>
                  <a href="#">
                    设置打折商品
                  </a>
                </li>
                <li>
                  <a href="#">
                    设置精品推荐
                  </a>
                </li>
                <li class="divider">
                </li>
                <li>
                  <a href="#">
                    Separated link
                  </a>
                </li>
              </ul>
            </li>
            <li>
              <i class="fa fa-home"></i>
              <a href="index.html">
                主页
              </a>
              <i class="fa fa-angle-right"></i>
            </li>
            <li>
              <a href="#">
                商品管理
              </a>
              <i class="fa fa-angle-right"></i>
            </li>
            <li>
              <a href="#">
                商品明细
              </a>
            </li>
          </ul>
          <!-- END PAGE TITLE & BREADCRUMB-->
        </div>
      </div>
      <!-- END PAGE HEADER-->
      <!-- BEGIN PAGE CONTENT-->
      <div class="row margin-bottom-20">
        <div class="col-md-12">
          <div class="form-group">
            <label class="col-md-2 control-label">商品ID</label>
            <label class="col-md-10 control-label">${goods.id}</label>
          </div>
          <div class="form-group">
            <label class="col-md-2 control-label">名称</label>
            <label class="col-md-10 control-label">${goods.name}</label>
          </div>

          <div class="form-group">
            <label class="col-md-2 control-label">类别</label>
            <label class="col-md-10 control-label">${goods.pid}</label>
          </div>
          <div class="form-group">
            <label class="col-md-2 control-label">进价</label>
            <label class="col-md-10 control-label">${goods.price0}</label>
          </div>
          <div class="form-group">
            <label class="col-md-2 control-label">零售价</label>
            <label class="col-md-10 control-label">${goods.price}</label>
          </div>
          <div class="form-group">
            <label class="col-md-2 control-label">批发价</label>
            <label class="col-md-10 control-label">${goods.price3}</label>
          </div>
          <div class="form-group">
            <label class="col-md-2 control-label">描述</label>
            <label class="col-md-10 control-label">${goods.desc}</label>
          </div>

        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <!-- BEGIN SAMPLE TABLE PORTLET-->
          <div class="portlet box blue">
            <div class="portlet-title">
              <div class="caption">
                <i class="fa fa-cogs"></i>商品详情列表
              </div>

            </div>
            <div class="portlet-body">
              <div class="table-toolbar">
                <div class="btn-group">
                  <a  href="#basic" data-toggle="modal" class="btn green">
                      <span class="title">
                          新增<i class="fa fa-plus"></i>
                      </span>
                  </a>
                </div>
                </div>

              <table class="table table-striped table-bordered table-hover">
                <thead>
                <tr>
                  <th>
                    #
                  </th>
                  <th>
                    商品ID
                  </th>
                  <th>
                    图片
                  </th>
                  <th>
                    size
                  </th>
                  <th class="hidden-480">
                    color
                  </th>
                  <th>
                    库存
                  </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="goodsDetail" items="${goodsDetailList}">
                  <tr class="odd gradeX">
                    <td>
                      <input type="checkbox" class="checkboxes" value="1"/>
                    </td>
                    <td>
                        ${goodsDetail.gid}
                    </td>
                    <td>
                        ${goodsDetail.imgUrl}
                    </td>
                    <td>
                        ${goodsDetail.size}
                    </td>
                    <td>
                        ${goodsDetail.color}
                    </td>
                    <td>
                        ${goodsDetail.storeNum}
                    </td>

                    <td>
                      <a class="edit" data-id="${goodsDetail.id}" data-toggle="modal" href="#basic" >
                        Edit
                      </a>
                    </td>
                    <td>
                      <a class="delete" data-id="${goodsDetail.id}" href="javascript:;">
                        Delete
                      </a>
                    </td>
                  </tr>
                </c:forEach>

                </tbody>
              </table>
            </div>
          </div>
          <!-- END SAMPLE TABLE PORTLET-->
        </div>

          <!-- END BORDERED TABLE PORTLET-->
        </div>
      </div>
    <div class="modal fade" id="basic" tabindex="-1" role="basic" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
            <h4 class="modal-title">添加商品明细</h4>
          </div>
          <form action="/admin/goodsDetail/add" method="post" enctype="multipart/form-data">
          <div class="modal-body">
            <div class="form-group">
              <label class="col-md-3 control-label" >尺寸:</label>
              <div class="col-md-7">
                <select class="form-control input-sm">
                  <option>40</option>
                  <option>41</option>
                  <option>42</option>
                  <option>43</option>
                  <option>44</option>
                  <option>45</option>
                </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-3 control-label" >颜色:</label>
              <div class="col-md-7">
                  <select class="form-control input-sm">
                    <option>白色</option>
                    <option>黄色</option>
                    <option>棕色</option>
                    <option>蓝色</option>
                    <option>绿色</option>
                    <option>红色</option>
                    <option>黑色</option>
                  </select>
              </div>
            </div>
            <div class="form-group">
              <label class="col-md-3 control-label" >库存:</label>
              <div class="col-md-7">
                <input id="storeNum" name="storeNum" type="text" class="form-control" value="">
              </div>
            </div>
            <br>
            <br>
            <br>
            <br>
            <br>
            <br>
            <div class="form-group">
              <label class="col-md-3 control-label" >图片:</label>
              <div class="col-md-7">
                <input id="photo" name="photo" type="file" accept="image/gif, image/jpeg"/>
              </div>
            </div>


            <br>
            <br>
            <br>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn default" data-dismiss="modal">取消</button>
            <button id="goodsDetail-btn" type="submit" class="btn blue">保存</button>
          </div>
        </div>
        </form>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal-dialog -->
    </div>


      <!-- END PAGE CONTENT-->
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

    $('#sample_1 a.delete').live('click', function (e) {
      e.preventDefault();
      if (confirm("Are you sure to delete this row ?") == false) {
        return;
      }
      var id = $(this).attr("data-id");
      $.post("/admin/focus/delete",
              {id: id},
              function (data, status) {
                location.reload();
              });
    });

  });
</script>
</body>
<!-- END BODY -->
</html>
