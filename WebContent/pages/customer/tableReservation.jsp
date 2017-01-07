<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>WPB | Table Reservation</title>

<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- DataTables -->
<link rel="stylesheet" href="../../plugins/datatables/dataTables.bootstrap.css">
<!-- Theme style -->
<link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">
<link rel="stylesheet" href="../../plugins/datepicker/datepicker3.css">
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="../../plugins/iCheck/all.css">
<!-- Bootstrap time Picker -->
<link rel="stylesheet" href="../../plugins/timepicker/bootstrap-timepicker.min.css">

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
					Online Reservation <small></small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="/restaurantProject/pages/dashboard.jsp"><i
							class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="#">Customer View</a></li>
					<li class="active">Table Reservation</li>
				</ol>
			</section>

			<!-- Main content -->
			<section class="content">

				<div class="row">
					<div class="col-md-12">
						<div class="box box-info">
							<div class="box-header with-border">
								<h3 class="box-title">Reservation Details</h3>
							</div>

							<form id="reservation-form" method="post"
								action="/restaurantProject/reservation"
								data-toggle="validator">
								<div class="box-body">
									<div class="col-md-12">
										<div class="col-md-2">
											<!-- Title -->
											<label for="title">Title:</label> <select name="title"
												class="form-control">
												<option value="Mr" selected="selected">Mr</option>
												<option value="Mrs">Mrs</option>
												<option value="Ms">Ms</option>
											</select>
											<!-- /.form group -->
										</div>

										<div class="col-md-5">
											<!-- First name -->
											<div class="form-group">
												<label>First name:</label> <input id="fn" name="firstname"
													type="text" class="form-control" placeholder="Walter" required>
											</div>
											<!-- /.form group -->
										</div>

										<div class="col-md-5">
											<!-- Last name -->
											<div class="bootstrap-timepicker">
												<div class="form-group">
													<label>Last name:</label> <input name="lastname"
														type="text" class="form-control" placeholder="White" required>
												</div>
												<!-- /.form group -->
											</div>
										</div>
									</div>

									<div class="col-md-12">
										<div class="col-md-5">
											<!-- Date dd/mm/yyyy -->
											<div class="form-group">
												<label>Date:</label>

												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="date" type="text"
														class="form-control pull-right" id="datepicker" required>
												</div>
												<!-- /.input group -->
											</div>
											<!-- /.form group -->
										</div>

										<div class="col-md-5">
											<!-- time Picker -->
											<div class="bootstrap-timepicker">
												<div class="form-group">
													<label>Time:</label>

													<div class="input-group">
														<div class="input-group-addon">
															<i class="fa fa-clock-o"></i>
														</div>
														<input name="time" type="text"
															class="form-control timepicker" data-date-container="tp" required>
													</div>
													<!-- /.input group -->
												</div>
												<!-- /.form group -->
											</div>
										</div>

										<div class="col-md-2">
											<!-- Guest number -->
											<div class="bootstrap-timepicker">
												<div class="form-group">
													<label>N.of guests:</label>

													<div class="input-group">
														<div class="input-group-addon">
															<i class="fa fa-users"></i>
														</div>
														<input name="guests" type="number" class="form-control"
															value="2" min="1" max="12">
													</div>

												</div>
												<!-- /.form group -->
											</div>
										</div>
									</div>

									<div class="col-md-12">

										<!-- phone mask -->
										<div class="col-md-6">
											<div class="form-group">
												<label>Telephone number:</label>

												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-phone"></i>
													</div>
													<input name="telephone" type="text" class="form-control">
												</div>
												<!-- /.input group -->
											</div>
											<!-- /.form group -->
										</div>

										<!-- email mask -->
										<div class="col-md-6">
											<div class="form-group">
												<label>Email:</label>

												<div class="input-group">
													<div class="input-group-addon">
														<i class="fa fa-at"></i>
													</div>
													<input name="email" type="email" required
														class="form-control" placeholder="email@example.com">
												</div>
												<!-- /.input group -->
											</div>
											<!-- /.form group -->
										</div>
									</div>

								</div>
								<!-- /. box body -->
								<div class="box-footer">
									<button type="submit" class="btn btn-primary">Submit</button>
									<button type="reset" class="btn btn-warning">Reset</button>
								</div>
							</form>
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

	</div>
	<!-- ./wrapper -->

	<!-- jQuery 2.2.3 -->
	<script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="../../bootstrap/js/bootstrap.min.js"></script>
	<!-- Date-range-picker -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
	<script src="../../plugins/daterangepicker/daterangepicker.js"></script>
	<!-- Bootstrap datepicker -->
	<script src="../../plugins/datepicker/bootstrap-datepicker.js"></script>
	<!-- Bootstrap time picker -->
	<script src="../../plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<!-- SlimScroll 1.3.0 -->
	<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- iCheck 1.0.1 -->
	<script src="../../plugins/iCheck/icheck.min.js"></script>
	<!-- FastClick -->
	<script src="../../plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="../../dist/js/app.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../../dist/js/demo.js"></script>
	<!-- Form validator -->
	<script src="/restaurantProject/plugins/validator/validator.min.js"></script>
	<script>
			$(document).ready(function() {
				$('#customer-menu').addClass('active');
				
				// Initialize Datepicker
				$('#datepicker').datepicker({
					autoclose : true,
					daysOfWeekDisabled : "1",
					format : 'D, dd M yyyy',
					startDate : new Date,
					todayBtn : true,
					todayHighlight : true,
					weekStart : 1
				});
				

				// Initialize Timepicker
				$(".timepicker").timepicker({
					showInputs : false,
					container : "#tp",
					defaultTime : 'current',
					showMeridian : false
				});
			});
	</script>
</body>
</html>
