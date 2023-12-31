<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.text.NumberFormat"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

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
			<h1>Quản lý sản phẩm</h1>
		</div>
		<!-- End Page Title -->
		<section class="section">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title"></h5>
							<p>
								<a href="<c:url value = "/product-create" />" type="button"
									class="btn btn-success"> <i class="bi bi-file-earmark me-1"></i>
									Thêm sản phẩm
								</a>
							</p>
							<!-- Bordered Table -->
							<table
								class=" table datatable table-striped table-bordered table-info table-auto  ">
								<thead>
									<tr>
										<th class="col-1 text-center">#</th>
										<th class="col-1 text-center">Hình Ảnh</th>
										<th class="col-1 text-center">Sản phẩm</th>
										<th class="col-2 text-center">Giá tiền</th>
										<th class="col-1 text-center">Số lượng</th>
										<!-- 										<th class="col-1 text-center">Danh mục</th> -->
										<th class="col-1 text-center">Chức năng</th>
									</tr>
								</thead>
								<tbody>

									<c:forEach items="${listProducts}" var="p">
										<tr>
											<td class="text-center" scope="row">${p.ID}</td>
											<td class="text-center"><img src="images/${p.images}"
												width="100%" /></td>
											<td class="text-center">${p.title}</td>
											<td class="text-center"><fmt:formatNumber
													value="${p.price}" type="currency" currencyCode="VND" maxFractionDigits="0" /></td>
											<td class="text-center" scope="row">${p.quantity}</td>
											<td class="text-center"><a
												href="edit-product?id=${p.ID}"
												class="btn btn-primary btn-sm" title="Sửa nội dung sản phẩm">
													<i class="bi bi-pencil"></i>
											</a> <a href="delete-product?id=${p.ID}"
												onclick="return confirm('Xác nhận xóa?')"
												class="btn btn-danger btn-sm" title="Xóa sản phẩm"> <i
													class="bi bi-trash"></i>
											</a></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
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
			&copy; Copyright <strong><span>Đại học Vinh</span></strong>. All Rights
			Reserved
		</div>
<!-- 		<div class="credits"> -->
<!-- 			<!-- All the links in the footer should remain intact. --> 
<!-- 			<!-- You can delete the links only if you purchased the pro version. --> 
<!-- 			<!-- Licensing information: https://bootstrapmade.com/license/ --> 
<!-- 			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ --> 
<!-- 			Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a> -->
<!-- 		</div> -->
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
