<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>WPB | Users</title>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Bootstrap table -->
<link rel="stylesheet" href="../../plugins/bootstrap-table/bootstrap-table.css">

<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

<!-- Pace style -->
<link rel="stylesheet" href="../../plugins/pace/pace.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-red sidebar-mini">
	<div class="wrapper">


		<jsp:include page="../../WEB-INF/upper-navbar.jsp" />

		<jsp:include page="../../WEB-INF/left-sidebar.jsp" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Users <small></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="../../pages/dashboard.jsp"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">Tables</a></li>
					<li class="active">Users</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">
				<div class="row">
					<!-- /.col -->
					<div class="col-md-12">
						<div class="box box-primary">
							<div class="box-body table-responsive">
								<table id="table" data-toggle="table" data-url="../../user" data-method="post"
									data-content-type="application/x-www-form-urlencoded" data-query-params='action=list' data-striped="true"
									data-show-columns="true" data-pagination="true" data-pagination-loop="false" data-show-refresh="true" data-search="true"
									data-resizable="true" data-show-toggle="true" data-show-export="true" data-page-size="20">
									<thead>
										<tr>
											<th data-field="id" data-sortable="true">Id</th>
											<th data-field="email" data-sortable="true">E-Mail</th>
											<th data-field="role.name" data-sortable="true">Role</th>
											<th data-field="fullName" data-sortable="true">Full Name</th>
											<th data-field="billingAddress" data-sortable="true">Billing Address</th>
											<th data-field="phoneNumber" data-sortable="true">Phone Number</th>
										</tr>
									</thead>
								</table>
							</div>
							<!-- /.box-body -->
						</div>
						<!-- /. box -->
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<jsp:include page="../../WEB-INF/footer.html" />

		<!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
		<div class="control-sidebar-bg"></div>
	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.2.3 -->
	<script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="../../bootstrap/js/bootstrap.min.js"></script>
	<!-- PACE -->
	<script src="../../plugins/pace/pace.min.js"></script>
	<!-- jQuery UI 1.11.4 -->
	<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
	<!-- Slimscroll -->
	<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="../../plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../dist/js/demo.js"></script>
	<!-- Page specific script -->
	<script src="../../plugins/bootstrap-table/bootstrap-table.js"></script>
	<!-- put your locale files after bootstrap-table.js -->
	<script src="../../plugins/bootstrap-table/locale/bootstrap-table-en-US.js"></script>
	<!-- extensions for bootstrap-table -->
	<script src="../../plugins/bootstrap-table/extensions/tableExport-jquery/tableExport.js"></script>
	<script src="../../plugins/bootstrap-table/extensions/export/bootstrap-table-export.js"></script>
	<script src="../../plugins/bootstrap-table/extensions/resizable/bootstrap-table-resizable.js"></script>
	<script src="../../plugins/bootstrap-table/extensions/colResizable/colResizable-1.6.js"></script>
	<!-- custom scripts -->
	<script src="../../pages/tables/tableutil.js"></script>
	<script>
		$(document).ready(function() {
			$('#table-menu').addClass('active');
			$('#table-menu-user').addClass('active');
		});
	</script>
</body>
</html>
