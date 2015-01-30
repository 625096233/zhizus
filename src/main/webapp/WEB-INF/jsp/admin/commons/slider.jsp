<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
  <div class="page-sidebar navbar-collapse collapse">
    <!-- add "navbar-no-scroll" class to disable the scrolling of the sidebar menu -->
    <!-- BEGIN SIDEBAR MENU -->
    <ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200">
      <li class="sidebar-toggler-wrapper">
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
        <div class="sidebar-toggler hidden-phone">
        </div>
        <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
      </li>
      <li class="sidebar-search-wrapper">
        <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
        <form class="sidebar-search" action="extra_search.html" method="POST">
          <div class="form-container">
            <div class="input-box">
              <a href="javascript:;" class="remove">
              </a>
              <input type="text" placeholder="Search..."/>
              <input type="button" class="submit" value=" "/>
            </div>
          </div>
        </form>
        <!-- END RESPONSIVE QUICK SEARCH FORM -->
      </li>
      <li class="start active ">
        <a href="index.html">
          <i class="fa fa-home"></i>
						<span class="title">
							首页
						</span>
						<span class="selected">
						</span>
        </a>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-shopping-cart"></i>
						<span class="title">
							商品类别
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="/admin/category/list">
              <i class="fa fa-bullhorn"></i>
              类别
            </a>
          </li>
          <li>
            <a href="ecommerce_orders.html">
              <i class="fa fa-shopping-cart"></i>
              新品上架
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-gift"></i>
						<span class="title">
							商品
						</span>
						<span class="arrow">
						</span>
        </a>
        <ul class="sub-menu">
          <li class="tooltips" >
            <a href="#basic" data-toggle="modal" >
								<span class="title">
									精品推荐
								</span>
            </a>
          </li>
          <li class="tooltips" data-container="body" data-placement="right" data-html="true">
            <a href="" target="_blank">
								<span class="title">
									新品上架
								</span>
            </a>
          </li>
          <li class="tooltips" data-container="body" data-placement="right" data-html="true" >
            <a href="" target="_blank">
								<span class="title">
									促销商品
								</span>
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-cogs"></i>
						<span class="title">
							图片管理
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="/admin/focus/list">
              轮播图片
            </a>
          </li>

        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-bookmark-o"></i>
						<span class="title">
							商品管理
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="/admin/goods/addPage">
              添加商品
            </a>
          </li>
          <li>
            <a href="ui_buttons.html">
              商品列表
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-table"></i>
						<span class="title">
							Form Stuff
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="form_controls.html">
              Form Controls
            </a>
          </li>
          <li>
            <a href="form_layouts.html">
              Form Layouts
            </a>
          </li>
          <li>
            <a href="form_editable.html">
								<span class="badge badge-roundless badge-warning">
									new
								</span>
              Form X-editable
            </a>
          </li>
          <li>
            <a href="form_wizard.html">
              Form Wizard
            </a>
          </li>
          <li>
            <a href="form_validation.html">
              Form Validation
            </a>
          </li>
          <li>
            <a href="form_image_crop.html">
								<span class="badge badge-roundless badge-important">
									new
								</span>
              Image Cropping
            </a>
          </li>
          <li>
            <a href="form_fileupload.html">
              Multiple File Upload
            </a>
          </li>
          <li>
            <a href="form_dropzone.html">
              Dropzone File Upload
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-envelope-o"></i>
						<span class="title">
							Email Templates
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="email_newsletter.html">
              Responsive Newsletter<br>
              Email Template
            </a>
          </li>
          <li>
            <a href="email_system.html">
              Responsive System<br>
              Email Template
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-sitemap"></i>
						<span class="title">
							Pages
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="page_portfolio.html">
              <i class="fa fa-briefcase"></i>
								<span class="badge badge-warning badge-roundless">
									new
								</span>
              Portfolio
            </a>
          </li>
          <li>
            <a href="page_timeline.html">
              <i class="fa fa-clock-o"></i>
								<span class="badge badge-info">
									4
								</span>
              Timeline
            </a>
          </li>
          <li>
            <a href="page_coming_soon.html">
              <i class="fa fa-cogs"></i>
              Coming Soon
            </a>
          </li>
          <li>
            <a href="page_blog.html">
              <i class="fa fa-comments"></i>
              Blog
            </a>
          </li>
          <li>
            <a href="page_blog_item.html">
              <i class="fa fa-font"></i>
              Blog Post
            </a>
          </li>
          <li>
            <a href="page_news.html">
              <i class="fa fa-coffee"></i>
								<span class="badge badge-success">
									9
								</span>
              News
            </a>
          </li>
          <li>
            <a href="page_news_item.html">
              <i class="fa fa-bell"></i>
              News View
            </a>
          </li>
          <li>
            <a href="page_about.html">
              <i class="fa fa-group"></i>
              About Us
            </a>
          </li>
          <li>
            <a href="page_contact.html">
              <i class="fa fa-envelope-o"></i>
              Contact Us
            </a>
          </li>
          <li>
            <a href="page_calendar.html">
              <i class="fa fa-calendar"></i>
								<span class="badge badge-important">
									14
								</span>
              Calendar
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-gift"></i>
						<span class="title">
							Extra
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="extra_profile.html">
              User Profile
            </a>
          </li>
          <li>
            <a href="extra_lock.html">
              Lock Screen
            </a>
          </li>
          <li>
            <a href="extra_faq.html">
              FAQ
            </a>
          </li>
          <li>
            <a href="inbox.html">
								<span class="badge badge-important">
									4
								</span>
              Inbox
            </a>
          </li>
          <li>
            <a href="extra_search.html">
              Search Results
            </a>
          </li>
          <li>
            <a href="extra_invoice.html">
              Invoice
            </a>
          </li>
          <li>
            <a href="extra_pricing_table.html">
              Pricing Tables
            </a>
          </li>
          <li>
            <a href="extra_404_option1.html">
              404 Page Option 1
            </a>
          </li>
          <li>
            <a href="extra_404_option2.html">
              404 Page Option 2
            </a>
          </li>
          <li>
            <a href="extra_404_option3.html">
              404 Page Option 3
            </a>
          </li>
          <li>
            <a href="extra_500_option1.html">
              500 Page Option 1
            </a>
          </li>
          <li>
            <a href="extra_500_option2.html">
              500 Page Option 2
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-folder-open"></i>
						<span class="title">
							Multi Level Menu
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="javascript:;">
              <i class="fa fa-cogs"></i> Item 1
								<span class="arrow">
								</span>
            </a>
            <ul class="sub-menu">
              <li>
                <a href="javascript:;">
                  <i class="fa fa-user"></i>
                  Sample Link 1
										<span class="arrow">
										</span>
                </a>
                <ul class="sub-menu">
                  <li>
                    <a href="#">
                      <i class="fa fa-remove"></i> Sample Link 1
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-pencil"></i> Sample Link 1
                    </a>
                  </li>
                  <li>
                    <a href="#">
                      <i class="fa fa-edit"></i> Sample Link 1
                    </a>
                  </li>
                </ul>
              </li>
              <li>
                <a href="#">
                  <i class="fa fa-user"></i> Sample Link 1
                </a>
              </li>
              <li>
                <a href="#">
                  <i class="fa fa-external-link"></i> Sample Link 2
                </a>
              </li>
              <li>
                <a href="#">
                  <i class="fa fa-bell"></i> Sample Link 3
                </a>
              </li>
            </ul>
          </li>
          <li>
            <a href="javascript:;">
              <i class="fa fa-globe"></i> Item 2
								<span class="arrow">
								</span>
            </a>
            <ul class="sub-menu">
              <li>
                <a href="#">
                  <i class="fa fa-user"></i> Sample Link 1
                </a>
              </li>
              <li>
                <a href="#">
                  <i class="fa fa-external-link"></i> Sample Link 1
                </a>
              </li>
              <li>
                <a href="#">
                  <i class="fa fa-bell"></i> Sample Link 1
                </a>
              </li>
            </ul>
          </li>
          <li>
            <a href="#">
              <i class="fa fa-folder-open"></i>
              Item 3
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-user"></i>
						<span class="title">
							Login Options
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="login.html">
              Login Form 1
            </a>
          </li>
          <li>
            <a href="login_soft.html">
              Login Form 2
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-th"></i>
						<span class="title">
							Data Tables
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="table_basic.html">
              Basic Datatables
            </a>
          </li>
          <li>
            <a href="table_responsive.html">
              Responsive Datatables
            </a>
          </li>
          <li>
            <a href="table_managed.html">
              Managed Datatables
            </a>
          </li>
          <li>
            <a href="table_editable.html">
              Editable Datatables
            </a>
          </li>
          <li>
            <a href="table_advanced.html">
              Advanced Datatables
            </a>
          </li>
          <li>
            <a href="table_ajax.html">
              Ajax Datatables
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-file-text"></i>
						<span class="title">
							Portlets
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="portlet_general.html">
              General Portlets
            </a>
          </li>
          <li>
            <a href="portlet_ajax.html">
              Ajax Portlets
            </a>
          </li>
          <li>
            <a href="portlet_draggable.html">
              Draggable Portlets
            </a>
          </li>
        </ul>
      </li>
      <li>
        <a href="javascript:;">
          <i class="fa fa-map-marker"></i>
						<span class="title">
							Maps
						</span>
						<span class="arrow ">
						</span>
        </a>
        <ul class="sub-menu">
          <li>
            <a href="maps_google.html">
              Google Maps
            </a>
          </li>
          <li>
            <a href="maps_vector.html">
              Vector Maps
            </a>
          </li>
        </ul>
      </li>
      <li class="last ">
        <a href="charts.html">
          <i class="fa fa-bar-chart-o"></i>
						<span class="title">
							Visual Charts
						</span>
        </a>
      </li>
    </ul>
    <!-- END SIDEBAR MENU -->
  </div>
</div>
<!-- END SIDEBAR -->