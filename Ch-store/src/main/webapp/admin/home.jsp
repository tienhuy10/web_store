<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />

<title>ADMIN</title>
<meta content="" name="description" />
<meta content="" name="keywords" />

<!-- Favicons -->
<link href="admin/assets/img/favicon.png" rel="icon" />
<link href="admin/assets/img/apple-touch-icon.png"
	rel="apple-touch-icon" />

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet" />

<!-- Vendor CSS Files -->
<link href="admin/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="admin/assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet" />
<link href="admin/assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet" />
<link href="admin/assets/vendor/quill/quill.snow.css" rel="stylesheet" />
<link href="admin/assets/vendor/quill/quill.bubble.css" rel="stylesheet" />
<link href="admin/assets/vendor/remixicon/remixicon.css"
	rel="stylesheet" />
<link href="admin/assets/vendor/simple-datatables/style.css"
	rel="stylesheet" />

<!-- Template Main CSS File -->
<link href="admin/assets/css/style.css" rel="stylesheet" />

<!-- =======================================================
  * Template Name: NiceAdmin - v2.4.1
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<%@ include file="/admin/head.jsp"%>

	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Bảng Điều Khiển</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a
						href="<c:url value = "/home-admin" />">Trang chủ</a></li>
					<li class="breadcrumb-item active">Thống Kê</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">
				<div class="col-lg-12">
					<!-- Left side columns -->
					<div class="row">

						<!-- Thống Kê Sản Phẩm -->
						<div class="col-xxl-4 col-md-4">
							<div class="card info-card sales-card">
								<div class="card-body">
									<h5 class="card-title">Số Lượng sản phẩm</h5>
									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-bag-check"></i>
										</div>
										<div class="ps-3">

											<h6 class="card-text   pt-1 ">${adminProducts}</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- End Sales Card 

  <!-- Thống Kê Người Dùng -->
						<div class="col-xxl-4 col-md-4">
							<div class="card info-card customers-card">
								<div class="card-body">
									<h5 class="card-title">Danh mục sản phẩm</h5>
									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">

											<h6 class="card-text pt-1">${CateCount}</h6>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-xxl-4 col-md-4">
							<div class="card info-card customers-card">
								<div class="card-body">
									<h5 class="card-title">Số lượng người dùng</h5>
									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">

											<h6 class="card-text pt-1">${adminCount}</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- Thống kê tiền lời -->
				<div class="col-lg-12">

					<div class="row">

						<!-- Thống Kê Sản Phẩm -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card sales-card">
								<div class="card-body">
									<h5 class="card-title">Sản phẩm đã bán</h5>
									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">

											<h6 class="card-text   pt-1 ">
												${tienloi.totalProducts}
											</h6>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-xxl-4 col-md-6">
							<div class="card info-card customers-card">
								<div class="card-body">
									<h5 class="card-title">Doanh thu</h5>
									<div class="d-flex align-items-center">
										<div
											class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cash-coin"></i>
										</div>
										<div class="ps-3">

											<h6 class="card-text pt-1">
												<fmt:formatNumber value="${tienloi.totalProfit}"
													type="currency" currencyCode="VND" maxFractionDigits="0" />
											</h6>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>Đại Học Vinh</span></strong>
		</div>
	</footer>
	<!-- End Footer -->

	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="admin/assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="admin/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="admin/assets/vendor/chart.js/chart.min.js"></script>
	<script src="admin/assets/vendor/echarts/echarts.min.js"></script>
	<script src="admin/assets/vendor/quill/quill.min.js"></script>
	<script
		src="admin/assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="admin/assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="admin/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="admin/assets/js/main.js"></script>
</body>
</html>