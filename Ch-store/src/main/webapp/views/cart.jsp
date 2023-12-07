<%@page import="DataConnect.DBConnection"%>
<%@page import="dataAccessObject.DAO"%>
<%@page import="java.util.List"%>
<%@page import="Model.Item"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Giỏ Hàng</title>
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" />
<!-- Google Fonts Roboto -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" />
<!-- MDB -->
<link rel="stylesheet" href="css/mdb.min.css" />
<!-- Custom styles -->
<link rel="stylesheet" href="css/style.css" />
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.css"
	rel="stylesheet" />
<!-- MDB -->
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.4.2/mdb.min.js"></script>
</head>
<body>

	<%@ include file="/views/Head.jsp"%>

	<!-- cart + summary -->
	<section class="bg-light my-5">
		<div class="container">
			<div class="row">
				<!-- cart -->
				<div class="col-lg-12">
					<div class="card border shadow-0">
						<div class="m-4">
							<h4 class="card-title mb-4">Giỏ hàng của tôi</h4>

							<c:set var="total" value="0"></c:set>
							<c:forEach var="item" items="${sessionScope.cart }">
								<c:set var="total"
									value="${total + item.product.price * item.quantity }"></c:set>
								<div class="row gy-3 mb-4">
									<div class="col-lg-5">
										<div class="me-lg-5">
											<div class="d-flex">
												<img src="${item.product.images }"
													class="border rounded me-3"
													style="width: 96px; height: 96px;" />
												<div class="">
													<a href="#" class="nav-link"></a>
													<p class="text-muted">${item.product.title }</p>
												</div>
											</div>
										</div>
									</div>
									<div
										class="col-lg-2 col-sm-6 col-6 d-flex flex-row flex-lg-column flex-xl-row text-nowrap">
										<div class="">
											<input style="width: 100px;" class="form-control me-4"
												type="number" id="quantity" name="quantity" min="1"
												value="${item.quantity }">
										</div>
										<div class="">
											<text class="h6">${item.product.price * item.quantity }
											đồng</text>
											<br /> <small class="text-muted text-nowrap">
												${item.product.price} /cái </small>
										</div>
									</div>
									<div
										class="col-lg col-sm-6 d-flex justify-content-sm-center justify-content-md-start justify-content-lg-center justify-content-xl-end mb-2">
										<div class="float-md-end">
											<a href="#!"
												class="btn btn-light border px-2 icon-hover-primary"><i
												class="fas fa-heart fa-lg px-1 text-secondary"></i></a> <a
												href="${pageContext.request.contextPath }/cart?action=remove&id=${item.product.ID}"
												onclick="return confirm('Xác nhận xóa')"
												class="btn btn-light border text-danger icon-hover-danger">
												Remove</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>

						<div class="border-top pt-4 mx-4 mb-4">
							<p>
								<i class="fas fa-truck text-muted fa-lg"></i> Giao hàng miễn phí
								trong vòng 1-2 tuần
							</p>
							<p class="text-muted"></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="bg-light my-5">
		<div class="container">
			<div class="row">
				<!-- cart -->
				<div class="col-lg-9">
					<div class="card border shadow-0">
						<div class="m-4">
							<h4 class="card-title mb-4">Thông tin thanh toán</h4>

							<form class="needs-validation" novalidate>

								<div class="mb-3">
									<label for="firstName">Họ và tên</label> <input type="text"
										class="form-control" id="firstName" placeholder="" value=""
										required />
									<div class="invalid-feedback">Vui lòng nhập họ tên.</div>
								</div>


								<div class="mb-3">
									<label for="firstName">Số điện thoại</label> <input type="text"
										class="form-control" id="phone" placeholder="" value=""
										required />
									<div class="invalid-feedback">Vui lòng nhập số điện
										thoại.</div>
								</div>

								<div class="mb-3">
									<label for="email">Email</label> <input type="email"
										class="form-control" id="email" placeholder="you@example.com" />
									<div class="invalid-feedback">Vui lòng nhập email.</div>
								</div>

								<div class="mb-3">
									<label for="address">Địa chỉ</label> <input type="text"
										class="form-control" id="address" placeholder="1234 Main St"
										required />
									<div class="invalid-feedback">Vui lòng nhập địa chỉ.</div>
								</div>

								<button class="btn btn-primary btn-lg btn-block" type="submit">
									Đặt hàng</button>
							</form>
						</div>
					</div>
				</div>
				<!-- cart -->

				<!-- summary -->
				<div class="col-lg-3">
					<div class="card mb-3 border shadow-0">
						<div class="card-body">
							<form>
								<div class="form-group">
									<label class="form-label">Nhập mã giảm giá</label>
									<div class="input-group">
										<input type="text" class="form-control border" name=""
											placeholder="Mã giảm giá" />
										<button class="btn btn-light border">Áp dụng</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="card shadow-0 border">
						<div class="card-body">
							<div class="d-flex justify-content-between">
								<p class="mb-2">Tổng tiền:</p>
								<p class="mb-2 fw-bold">${total }</p>
							</div>
							<div class="mt-3">
								<a href="Products" class="btn btn-success w-100 shadow-0 mb-2">
									Tiếp tục mua sắm </a>
							</div>

						</div>
					</div>
				</div>
				<!-- summary -->
			</div>
		</div>
	</section>
	<%@ include file="/views/Footer.jsp"%>
</body>
</html>