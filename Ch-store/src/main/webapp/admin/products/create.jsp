<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
			<h2>Xác nhận thêm sản phẩm</h2>
		</div>
		<div class="container shadow p-5">
			<div class="row pb-2">
				<h2>Thêm mới sản phẩm</h2>
			</div>
			<form method="post" action="product-create">
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Tên sản phẩm</label> <input name="name" type="text"
							class="form-control mb-3" placeholder="Nhập tên sản phẩm" /> <span
							class="alert-danger"></span>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Hình ảnh</label>
						<textarea name="image" class="form-control mb-3"
							class="alert-danger" required></textarea>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Giá nhập</label> <input name="capital_price" type="text"
							class="form-control mb-3" placeholder="Nhập số tiền" /> <span
							class="alert-danger"></span>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Giá bán</label> <input name="price" type="text"
							class="form-control mb-3" placeholder="Nhập số tiền" /> <span
							class="alert-danger"></span>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Số lượng</label> <input name="quantity" type="text"
							class="form-control mb-3" placeholder="Nhập số lượng" /> <span
							class="alert-danger"></span>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Thông tin sản phẩm</label>
						<textarea name="info" class="form-control mb-3"
							class="alert-danger" required></textarea>
					</div>
				</div>
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Danh mục</label> <select name="category"
							class="form-select">
							<c:forEach items="${listCategories}" var="c">
								<option value="${c.ID}">${c.name}</option>
							</c:forEach>
						</select>
					</div>
					<div class="form-group mt-5 mb-5"></div>
				</div>
				<button type="submit" class="btn btn-lg btn-primary p-2">
					<i class="bi bi-file-plus-fill"></i>Lưu
				</button>
				<a class="btn btn-lg btn-warning p-2">Quay lại</a>
			</form>
		</div>
	</main>

	<!-- End #main -->


	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights
			Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
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
