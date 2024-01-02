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

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.7.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

</head>

<body>
	<%@ include file="/admin/head.jsp"%>
	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Quản Lý Đơn Hàng</h1>
		</div>
		<!-- End Page Title -->
		<section class="section">
			<div class="row">
				<div class="col-12">
					<div class="card">
						<div class="card-body">
							<h5 class="card-title"></h5>
							<!-- Bordered Table -->
							<table class="table datatable table-bordered  table-auto">
								<thead>
									<tr>
										<th class="text-center">ID</th>
										<th class="text-center">Thời gian đặt hàng</th>
										<th class="text-center">Họ Tên</th>
										<!-- <th class="text-center">Số điện thoại</th> -->
										<th class="text-center">Số lượng</th>
										<th class="text-center">Tổng tiền</th>
										<th class="text-center">Địa chỉ</th>
										<th class="text-center">Chức Năng</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listO}" var="o">
										<tr>
											<td class="text-center">${o.userId}</td>
											<td class="text-center">${o.orderDate}</td>
											<td class="text-center">${o.fullname}</td>
											<!-- <td class="text-center">${o.phone}</td> -->
											<td class="text-center">${o.totalProducts}</td>
											<td class="text-center"><fmt:formatNumber
													value="${o.totalPrice}" type="currency" currencyCode="VND"
													maxFractionDigits="0" /></td>
											<td class="text-center">${o.address}</td>
											<td class="text-center"><a href="#"
												class="btn btn-primary btn-sm"
												onclick="openModal(${o.userId})" data-bs-toggle="modal"
												data-bs-target="#myModal" title="Xem đơn hàng"> <i
													class="bi bi-eye"></i>
											</a> <a href="" class="btn btn-danger btn-sm"
												title="Xóa đơn hàng"> <i class="bi bi-trash"></i>
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

		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg">
				<!-- Sử dụng lớp modal-lg để có chiều rộng lớn hơn -->
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">Chi tiết đơn hàng</h4>
						<button type="button" class="close" data-bs-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<table
							class="table datatable table-striped table-bordered table-info">
							<!-- Nội dung bảng điều chỉnh theo nhu cầu của bạn -->
						</table>
					</div>

					<!-- Modal footer -->
					<!-- <div class="modal-footer"> -->
					<!--     <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Thoát</button> -->
					<!-- </div> -->
				</div>
			</div>
		</div>

	</main>
	<!-- End #main -->


	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright <strong><span>Đại học Vinh</span></strong>. All Rights
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


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.7.2/dist/js/bootstrap.bundle.min.js"></script>
	<script>
  function openModal(userId) {
    // Sử dụng AJAX để gửi yêu cầu đến servlet "bill"
    $.ajax({
      type: 'GET',
      url: 'bill', // Đặt đúng đường dẫn đến servlet của bạn
      data: { id: userId },
      success: function(response) {
        // Hiển thị kết quả từ servlet trong modal
        $('.modal-body').html(response);
        // Hiển thị modal
        $('#myModal').modal('show');
      },
      error: function(error) {
        console.log('Error:', error);
      }
    });
  }
</script>


</body>
</html>