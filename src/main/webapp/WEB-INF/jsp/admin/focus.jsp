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
        <div class="page-content">
            <!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->


            <div class="row">
                <div class="col-md-12">
                    <!-- BEGIN EXAMPLE TABLE PORTLET-->
                    <div class="portlet box light-grey">
                        <div class="portlet-title">
                            <div class="caption">
                                <i class="fa fa-globe"></i>轮播图片
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
                                    <button class="btn dropdown-toggle" data-toggle="dropdown">Tools <i
                                            class="fa fa-angle-down"></i>
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
                                        <input type="checkbox" class="group-checkable"
                                               data-set="#sample_1 .checkboxes"/>
                                    </th>
                                    <th width="20%">
                                        名称
                                    </th>
                                    <th >
                                        图片URL
                                    </th>

                                    <th width="10%">
                                        删除
                                    </th>
                                </tr>

                                </thead>
                                <tbody>
                                <c:forEach var="focus" items="${focusList}">
                                    <tr class="odd gradeX">
                                        <td>
                                            <input type="checkbox" class="checkboxes" value="1"/>
                                        </td>
                                        <td>
                                                ${focus.name}

                                        </td>
                                        <td>
                                                ${focus.imgUrl}
                                        </td>

                                        <td>
                                            <a class="delete" data-id="${focus.id}" href="javascript:;">
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
                            <h4 class="modal-title">添加轮播图片</h4>
                        </div>
                        <form action="/admin/focus/add" method="post" enctype="multipart/form-data">
                            <div class="modal-body">
                                <div  class="form-group">
                                    <label class="col-md-3 control-label">图片名称:</label>
                                    <div class="col-md-7">
                                        <input type="text" id="name" name="name" type="text" class="form-control"value=""/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-md-10">
                                        <input id="photo" name="photo" type="file" accept="image/gif, image/jpeg"/>
                                    </div>
                                </div>
                                <br>

                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn default" data-dismiss="modal">取消</button>
                                <button id="focus-btn" type="submit" class="btn blue">保存</button>
                            </div>
                        </form>
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
