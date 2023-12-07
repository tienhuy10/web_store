<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Liên Hệ</title>
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


	<section class="bg-light py-5">
		<div class="container">
			<div class="row">
				<div class="col-xl-8 col-lg-8 mb-4">


					<!-- Checkout -->
					<div class="card shadow-0 border">
						<div class="p-4">
							<h5 class="card-title mb-3">Thông tin khách hàng</h5>
							<div class="row">
								<div class="col-6 mb-3">
									<p class="mb-0">Họ và tên</p>
									<div class="form-outline">
										<input type="text" id="typeText" placeholder="Type here"
											class="form-control" />
									</div>
								</div>

								<div class="col-6 mb-3">
									<p class="mb-0">Điện thoại</p>
									<div class="form-outline">
										<input type="tel" id="typePhone" value="+84 "
											class="form-control" />
									</div>
								</div>

								<div class="col-6">
									<p class="mb-0">Last name</p>
									<div class="form-outline">
										<input type="text" id="typeText" placeholder="Type here"
											class="form-control" />
									</div>
								</div>



								<div class="col-6 mb-3">
									<p class="mb-0">Email</p>
									<div class="form-outline">
										<input type="email" id="typeEmail"
											placeholder="example@gmail.com" class="form-control" />
									</div>
								</div>
							</div>




							<div class="mb-3">
								<p class="mb-0">Địa chỉ</p>
								<div class="form-outline">
									<textarea class="form-control" id="textAreaExample1" rows="2"></textarea>
								</div>
							</div>

							<div class="float-end">
								<button class="btn btn-light border">Hủy</button>
								<button class="btn btn-success shadow-0 border">Đặt hàng</button>
							</div>
						</div>
					</div>
					<!-- Checkout -->
				</div>
				<div
					class="col-xl-4 col-lg-4 d-flex justify-content-center justify-content-lg-end">
					<div class="ms-lg-4 mt-4 mt-lg-0" style="max-width: 320px;">
						<h6 class="mb-3">Summary</h6>
						<div class="d-flex justify-content-between">
							<p class="mb-2">Total price:</p>
							<p class="mb-2">$195.90</p>
						</div>
						<div class="d-flex justify-content-between">
							<p class="mb-2">Discount:</p>
							<p class="mb-2 text-danger">- $60.00</p>
						</div>
						<div class="d-flex justify-content-between">
							<p class="mb-2">Shipping cost:</p>
							<p class="mb-2">+ $14.00</p>
						</div>
						<hr />
						<div class="d-flex justify-content-between">
							<p class="mb-2">Total price:</p>
							<p class="mb-2 fw-bold">$149.90</p>
						</div>

						<div class="input-group mt-3 mb-4">
							<input type="text" class="form-control border" name=""
								placeholder="Promo code" />
							<button class="btn btn-light text-primary border">Apply</button>
						</div>

						<hr />
						<h6 class="text-dark my-4">Items in cart</h6>

						<div class="d-flex align-items-center mb-4">
							<div class="me-3 position-relative">
								<span
									class="position-absolute top-0 start-100 translate-middle badge rounded-pill badge-secondary">
									1 </span> <img
									src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/7.webp"
									style="height: 96px; width: 96x;" class="img-sm rounded border" />
							</div>
							<div class="">
								<a href="#" class="nav-link"> Gaming Headset with Mic <br />
									Darkblue color
								</a>
								<div class="price text-muted">Total: $295.99</div>
							</div>
						</div>

						<div class="d-flex align-items-center mb-4">
							<div class="me-3 position-relative">
								<span
									class="position-absolute top-0 start-100 translate-middle badge rounded-pill badge-secondary">
									1 </span> <img
									src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/5.webp"
									style="height: 96px; width: 96x;" class="img-sm rounded border" />
							</div>
							<div class="">
								<a href="#" class="nav-link"> Apple Watch Series 4 Space <br />
									Large size
								</a>
								<div class="price text-muted">Total: $217.99</div>
							</div>
						</div>

						<div class="d-flex align-items-center mb-4">
							<div class="me-3 position-relative">
								<span
									class="position-absolute top-0 start-100 translate-middle badge rounded-pill badge-secondary">
									3 </span> <img
									src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/1.webp"
									style="height: 96px; width: 96x;" class="img-sm rounded border" />
							</div>
							<div class="">
								<a href="#" class="nav-link">GoPro HERO6 4K Action Camera -
									Black</a>
								<div class="price text-muted">Total: $910.00</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<%@ include file="/views/Footer.jsp"%>
</body>
</html>