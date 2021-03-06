<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="wpb.enums.Section"%>
<%@ page import="wpb.entity.Role.RoleEnum"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="accessManager" scope="request" class="wpb.util.AccessManager" />

<style>
	.content-header {
		padding: 15px;
	}
	.slider_area {
		margin-top: 10px;
	}
</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">


	<c:if test="<%=!accessManager.isAllowed(session, Section.DASHBOARD)%>">
		<!-- Content Header (Page header) CUSTOMER VIEW -->
		<div class="col-md-12">
			<section class="content-header">
				<h1>Welcome to your personal account!</h1>
				<ol class="breadcrumb">
					<li><a href="${pageContext.request.contextPath}/pages/dashboard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
			</section>
		</div>
		<div class="col-md-8">
			<div class="box box-info">
				<div class="box-body">
					<h3>From here you can </h3>
						<ul>
							<li><h4>&emsp;<i class="fa fa-cutlery"></i>&emsp;&emsp;
								<a href="${pageContext.request.contextPath}/pages/customer/tableReservation.jsp">reserve a table</a></h4>
							</li>
							<li><h4>&emsp;<i class="fa fa-paper-plane"></i>&emsp;&emsp;
								<a href="${pageContext.request.contextPath}/pages/customer/takeawayOrder.jsp">make a takeaway order</a></h4>
							</li>
							<li><h4>&emsp;<i class="fa fa-gears"></i>&emsp;&emsp;
								<a href="${pageContext.request.contextPath}/profile.jsp">manage your account</a></h4>
							</li>
						</ul>
				</div>
			</div>
		</div>
	</c:if>

	<c:if test="<%=accessManager.isAllowed(session, Section.DASHBOARD)%>">
		<!-- Content Header (Page header) OTHER USERS VIEW -->
		<section class="content-header">
			<h1>Dashboard</h1>
			<ol class="breadcrumb">
				<li><a href="${pageContext.request.contextPath}/pages/dashboard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
				<li class="active">Dashboard</li>
			</ol>
		</section>
	</c:if>
	<!-- Main content -->
	<section class="content slider">
		<!-- ONLY VISIBLE TO CUSTOMERS -->
		<c:if test="<%=!accessManager.isAllowed(session, Section.DASHBOARD)%>">
			<!-- Info boxes -->
			<div class="row">
				<div class="col-lg-12 col-md-12">
					<div class="slider_area">
						<!-- Start super slider -->
						<div id="slides">
							<ul class="slides-container">

								<li><img src="dist/img/fast-food.jpg" alt="img">
									<div class="slider_caption">
										<h2>Taste the quality</h2>
										<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at
											its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.Many desktop
											publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search</p>
										<a class="slider_btn" href="#">Know More</a>
									</div></li>
								<!-- Start single slider-->
								<li><img src="dist/img/restaurant-2.jpg" alt="img">
									<div class="slider_caption">
										<h2>Largest &amp; Beautiful Environment</h2>
										<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at
											its layout.</p>
										<a class="slider_btn" href="#">Know More</a>
									</div></li>
								<!-- Start single slider-->
								<li><img src="dist/img/photo1.png" alt="img">
									<div class="slider_caption">
										<h2>Find out you in better way</h2>
										<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at
											its layout.The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.Many desktop
											publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search</p>
										<a class="slider_btn" href="#">Know More</a>
									</div></li>
							</ul>
							<nav class="slides-navigation">
								<a href="#" class="next"></a> <a href="#" class="prev"></a>
							</nav>
						</div>
					</div>
				</div>
			</div>
			<!-- /.row -->
		</c:if>
		<!-- / .ONLY VISIBLE TO CUSTOMERS  -->

		<!-- from now on - ONLY VISIBLE TO OTHER USERS -->
		<c:if test="<%=accessManager.isAllowed(session, Section.DASHBOARD)%>">
			<!-- Info boxes -->
			<div class="row">
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="info-box">
						<span class="info-box-icon bg-aqua"><i class="fa fa-gears"></i></span>

						<div class="info-box-content">
							<span class="info-box-text">CPU Traffic</span> <span class="info-box-number">87<small>%</small></span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="info-box">
						<span class="info-box-icon bg-red"><i class="fa fa-google-plus"></i></span>

						<div class="info-box-content">
							<span class="info-box-text">Likes</span> <span class="info-box-number">1,163</span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->

				<!-- fix for small devices only -->
				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="info-box">
						<span class="info-box-icon bg-green"><i class="fa fa-shopping-cart"></i></span>

						<div class="info-box-content">
							<span class="info-box-text">Sales</span> <span id="sales-tot" class="info-box-number"></span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
				<div class="col-md-3 col-sm-6 col-xs-12">
					<div class="info-box">
						<span class="info-box-icon bg-yellow"><i class="fa fa-users"></i></span>

						<div class="info-box-content">
							<span class="info-box-text">Members</span> <span id="user-count" class="info-box-number"></span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</c:if>

		<c:if test="<%=accessManager.isAllowed(session, Section.DASHBOARD)%>">
			<div class="row">
				<div class="col-md-12">
					<div class="box">
						<div class="box-header with-border">
							<h3 class="box-title">Monthly Recap Report</h3>

							<div class="box-tools pull-right">
								<button type="button" class="btn btn-box-tool" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="row">
								<div class="col-md-12">
									<p class="text-center">
										<strong>Period: 1 Sep, 2016 - 28 Feb, 2017</strong>
									</p>

									<div class="chart">
										<!-- Sales Chart Canvas -->
										<canvas id="salesChart" style="height: 180px;"></canvas>
									</div>
									<!-- /.chart-responsive -->
								</div>
								<!-- /.col -->
							</div>
							<!-- /.row -->
						</div>
						<!-- ./box-body -->
						<div class="box-footer">
							<div class="row">
								<div class="col-sm-4 col-xs-6">
									<div class="description-block border-right">
										<span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 17%</span>
										<h5 id="tot-revenue" class="description-header"></h5>
										<span class="description-text">TOTAL REVENUE</span>
									</div>
									<!-- /.description-block -->
								</div>
								<!-- /.col -->
								<div class="col-sm-4 col-xs-6">
									<div class="description-block border-right">
										<span class="description-percentage text-yellow"><i class="fa fa-caret-left"></i> 0%</span>
										<h5 id="tot-cost" class="description-header"></h5>
										<span class="description-text">TOTAL COST</span>
									</div>
									<!-- /.description-block -->
								</div>
								<!-- /.col -->
								<div class="col-sm-4 col-xs-6">
									<div class="description-block border-right">
										<span class="description-percentage text-green"><i class="fa fa-caret-up"></i> 20%</span>
										<h5 id="tot-profit" class="description-header"></h5>
										<span class="description-text">TOTAL PROFIT</span>
									</div>
									<!-- /.description-block -->
								</div>
								<!-- /.col -->

							</div>
							<!-- /.box-footer -->
						</div>
						<!-- /.box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</div>
		</c:if>

		<c:if test="<%=accessManager.isAllowed(session, Section.DASHBOARD)%>">
			<!-- Main row -->
			<div class="row">
				<!-- Left col -->
				<div class="col-md-9">
					<!-- MAP & BOX PANE -->

					<div class="row">
						<div class="col-md-6">
							<!-- ITEMS LIST -->
							<div class="box box-danger">
								<div class="box-header with-border">
									<h3 class="box-title">Latest Items</h3>

									<div class="box-tools pull-right">
										<span class="label label-danger">5 New Items</span>
										<button type="button" class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body">
									<table id="item-table" data-toggle="table" data-url="${pageContext.request.contextPath}/item" data-method="post"
										data-content-type="application/x-www-form-urlencoded" data-query-params='action=list' data-striped="true"
										data-pagination="true" data-pagination-loop="false" data-page-size="8" data-resizable="false" data-sort-name="id"
										data-sort-order="desc" data-page-list="[8]">
										<thead>
											<tr>
												<th data-field="id" data-sortable="true" data-width="8%">Id</th>
												<th data-field="name" data-sortable="true" data-width="30%">Name</th>
												<th data-field="foodClass.name" data-sortable="true">Food class</th>
												<th data-field="price" data-sortable="true" data-align="right" data-formatter="priceFormatter">Price</th>
												<th data-field="available" data-sortable="true" data-sorter="boolSorter" data-formatter="boolFormatter"
													data-align="center">Availability</th>
											</tr>
										</thead>
									</table>
									<!-- /.items-list -->
								</div>
								<!-- /.box-body -->
								<div class="box-footer text-center">
									<a href="${pageContext.request.contextPath}/pages/tables/item.jsp" class="uppercase">View All Items</a>
								</div>
								<!-- /.box-footer -->
							</div>
							<!--/.box -->
						</div>
						<!-- /.col -->

						<div class="col-md-6">
							<!-- USERS LIST -->
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Latest Members</h3>

									<div class="box-tools pull-right">
										<span class="label label-success">8 New Members</span>
										<button type="button" class="btn btn-box-tool" data-widget="collapse">
											<i class="fa fa-minus"></i>
										</button>
									</div>
								</div>
								<!-- /.box-header -->
								<div class="box-body no-padding">
									<ul class="users-list clearfix" id="db-user-list">
									</ul>
									<!-- /.users-list -->
								</div>
								<!-- /.box-body -->
								<div class="box-footer text-center">
									<a href="${pageContext.request.contextPath}/pages/tables/user.jsp" class="uppercase">View All Users</a>
								</div>
								<!-- /.box-footer -->
							</div>
							<!--/.box -->
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.col -->

				<div class="col-md-3">
					<!-- Info Boxes Style 2 -->
					<div class="info-box bg-red">
						<span class="info-box-icon"><i class="fa fa-cube"></i></span>

						<div class="info-box-content">
							<span class="info-box-text">Inventory</span> <span id="item-count" class="info-box-number"></span>

							<div class="progress">
								<div class="progress-bar" style="width: 50%"></div>
							</div>
							<span class="progress-description"> 12% Increase in 30 Days </span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
					<div class="info-box bg-aqua">
						<span class="info-box-icon"><i class="fa fa-cutlery"></i></span>

						<div class="info-box-content">
							<span class="info-box-text">Reservations</span> <span id="reservation-count" class="info-box-number"></span>

							<div class="progress">
								<div class="progress-bar" style="width: 20%"></div>
							</div>
							<span class="progress-description"> 20% Increase in 30 Days </span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
					<div class="info-box bg-yellow">
						<span class="info-box-icon"><i class="fa fa-paper-plane"></i></span>

						<div class="info-box-content">
							<span class="info-box-text">Takeaway Orders</span> <span id="ta-count" class="info-box-number"></span>

							<div class="progress">
								<div class="progress-bar" style="width: 24%"></div>
							</div>
							<span class="progress-description"> 70% Increase in 30 Days </span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
					<div class="info-box bg-green">
						<span class="info-box-icon"><i class="fa fa-apple"></i></span>

						<div class="info-box-content">
							<span class="info-box-text">Food Classes</span> <span id="food-class-count" class="info-box-number"></span>
							<div class="progress">
								<div class="progress-bar" style="width: 40%"></div>
							</div>
							<span class="progress-description"> 40% Increase in 30 Days </span>
						</div>
						<!-- /.info-box-content -->
					</div>
					<!-- /.info-box -->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</c:if>

		<c:if test="<%=accessManager.isAllowed(session, Section.DASHBOARD)%>">
			<div class="row">
				<div class="col-md-12">
					<!-- TABLE: LATEST TABLE RESERVATIONS -->
					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">Latest Table Reservations</h3>
							<div class="box-tools pull-right">
								<button type="button" class="btn btn-box-tool" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="table-responsive">
								<table id="res-table" data-toggle="table" data-url="${pageContext.request.contextPath}/reservation" data-method="post"
									data-query-params='action=list' data-content-type="application/x-www-form-urlencoded" data-striped="true"
									data-pagination="true" data-pagination-loop="true" data-page-size="10" data-resizable="false" data-sort-name="id"
									data-sort-order="desc" data-page-list="[10]">
									<thead>
										<tr>
											<th data-field="id" data-sortable="true">Id</th>
											<th data-field="startDate" data-sortable="true">Start Date</th>
											<th data-field="endDate" data-sortable="true">End Date</th>
											<th data-field="user.id" data-sortable="true">User Id</th>
											<th data-field="customerName" data-sortable="true">Customer Name</th>
											<th data-field="comment" data-sortable="true">Comment</th>
										</tr>
									</thead>
								</table>
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.box-body -->
						<div class="box-footer text-center">
							<a href="${pageContext.request.contextPath}/pages/tables/reservation.jsp" class="uppercase">View All Table Reservations</a>
						</div>
						<!-- /.box-footer -->
					</div>
					<!-- /.box LATEST TABLE RESERVATIONS-->

					<!-- TABLE: LATEST TAKEAWAY ORDERS -->
					<div class="box box-warning">
						<div class="box-header with-border">
							<h3 class="box-title">Latest Takeaway Orders</h3>
							<div class="box-tools pull-right">
								<button type="button" class="btn btn-box-tool" data-widget="collapse">
									<i class="fa fa-minus"></i>
								</button>
							</div>
						</div>
						<!-- /.box-header -->
						<div class="box-body">
							<div class="table-responsive">
								<table id="ta-table" data-detail-view="true" data-striped="true" data-url="${pageContext.request.contextPath}/takeaway"
									data-method="post" data-query-params='action=list' data-content-type="application/x-www-form-urlencoded"
									data-pagination="true" data-pagination-loop="false" data-page-size="10" data-resizable="false" data-sort-name="id"
									data-sort-order="desc" data-detail-formatter="detailFormatter" data-page-list="[10]">
									<thead>
										<tr>
											<th data-field="order_id" data-sortable="true">ID</th>
											<th data-field="orderDate" data-sortable="true">Order Date</th>
											<th data-field="address" data-sortable="true">Address</th>
											<th data-field="phoneNumber" data-sortable="true">Phone Number</th>
											<th data-field="guest.id" data-sortable="true">Guest ID</th>
											<th data-field="cost" data-sortable="true">Cost</th>
											<th data-field="status" data-sortable="true">Status</th>
											<th data-field="comment" data-sortable="true">Comment</th>
										</tr>
									</thead>
								</table>
							</div>
							<!-- /.table-responsive -->
						</div>
						<!-- /.box-body -->
						<div class="box-footer text-center">
							<a href="${pageContext.request.contextPath}/pages/tables/order.jsp" class="uppercase">View All Takeaway Orders</a>
						</div>
						<!-- /.box-footer -->
					</div>
					<!-- /.box LATEST TAKEAWAY ORDERS-->
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</c:if>

	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

