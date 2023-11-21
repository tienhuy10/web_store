<%@page import="Model.cartbean"%>
<%@page import="Controller.CartControl"%>
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
				<div class="col-lg-9">
					<div class="card border shadow-0">
						<div class="m-4">
							<h4 class="card-title mb-4">Giỏ hàng của tôi</h4>

							<%
							int i;
							for (i = 0; i < CartControl.lsCartbeans.size(); i++) {
								cartbean cartbean = CartControl.lsCartbeans.get(i);
							%>
							<div class="row gy-3 mb-4">
								<div class="col-lg-5">
									<div class="me-lg-5">
										<div class="d-flex">
											<img
												src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/11.webp"
												class="border rounded me-3"
												style="width: 96px; height: 96px;" />
											<div class="">
												<a href="#" class="nav-link"><%=cartbean.getProducts().getTitle()%></a>
												<p class="text-muted">Yellow, Jeans</p>
											</div>
										</div>
									</div>
								</div>
								<div
									class="col-lg-2 col-sm-6 col-6 d-flex flex-row flex-lg-column flex-xl-row text-nowrap">
									<div class="">
										<select style="width: 100px;" class="form-select me-4">
											<option>1</option>
											<option>2</option>
											<option>3</option>
											<option>4</option>
										</select>
									</div>
									<div class="">
										<text class="h6"><%=cartbean.getProducts().getPrice()%></text>
										<br /> <small class="text-muted text-nowrap"> $460.00
											/ per item </small>
									</div>
								</div>
								<div
									class="col-lg col-sm-6 d-flex justify-content-sm-center justify-content-md-start justify-content-lg-center justify-content-xl-end mb-2">
									<div class="float-md-end">
										<a href="#!"
											class="btn btn-light border px-2 icon-hover-primary"><i
											class="fas fa-heart fa-lg px-1 text-secondary"></i></a> <a
											href="#"
											class="btn btn-light border text-danger icon-hover-danger">
											Remove</a>
									</div>
								</div>
							</div>
							<%
							}
							%>
						</div>

						<div class="border-top pt-4 mx-4 mb-4">
							<p>
								<i class="fas fa-truck text-muted fa-lg"></i> Free Delivery
								within 1-2 weeks
							</p>
							<p class="text-muted">Lorem ipsum dolor sit amet, consectetur
								adipisicing elit, sed do eiusmod tempor incididunt ut labore et
								dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
								exercitation ullamco laboris nisi ut aliquip</p>
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
											placeholder="Coupon code" />
										<button class="btn btn-light border">Áp dụng</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<div class="card shadow-0 border">
						<div class="card-body">
							<div class="d-flex justify-content-between">
								<p class="mb-2">Total price:</p>
								<p class="mb-2">$329.00</p>
							</div>
							<div class="d-flex justify-content-between">
								<p class="mb-2">Discount:</p>
								<p class="mb-2 text-success">-$60.00</p>
							</div>
							<div class="d-flex justify-content-between">
								<p class="mb-2">TAX:</p>
								<p class="mb-2">$14.00</p>
							</div>
							<hr />
							<div class="d-flex justify-content-between">
								<p class="mb-2">Total price:</p>
								<p class="mb-2 fw-bold">$283.00</p>
							</div>

							<div class="mt-3">
								<a href="#" class="btn btn-success w-100 shadow-0 mb-2">
									Thanh toán </a> <a href="#" class="btn btn-light w-100 border mt-2">
									Tiếp tục mua sắm </a>
							</div>
						</div>
					</div>
				</div>
				<!-- summary -->
			</div>
		</div>
	</section>
	<!-- cart + summary -->
	<section>
		<div class="container my-5">
			<header class="mb-4">
				<h3>Recommended items</h3>
			</header>

			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card px-4 border shadow-0 mb-4 mb-lg-0">
						<div class="mask px-2" style="height: 50px;">
							<div class="d-flex justify-content-between">
								<h6>
									<span class="badge bg-danger pt-1 mt-3 ms-2">New</span>
								</h6>
								<a href="#"><i
									class="fas fa-heart text-primary fa-lg float-end pt-3 m-2"></i></a>
							</div>
						</div>
						<a href="#" class=""> <img
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/7.webp"
							class="card-img-top rounded-2" />
						</a>
						<div class="card-body d-flex flex-column pt-3 border-top">
							<a href="#" class="nav-link">Gaming Headset with Mic</a>
							<div class="price-wrap mb-2">
								<strong class="">$18.95</strong>
								<del class="">$24.99</del>
							</div>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="#" class="btn btn-outline-primary w-100">Add to
									cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card px-4 border shadow-0 mb-4 mb-lg-0">
						<div class="mask px-2" style="height: 50px;">
							<a href="#"><i
								class="fas fa-heart text-primary fa-lg float-end pt-3 m-2"></i></a>
						</div>
						<a href="#" class=""> <img
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/5.webp"
							class="card-img-top rounded-2" />
						</a>
						<div class="card-body d-flex flex-column pt-3 border-top">
							<a href="#" class="nav-link">Apple Watch Series 1 Sport </a>
							<div class="price-wrap mb-2">
								<strong class="">$120.00</strong>
							</div>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="#" class="btn btn-outline-primary w-100">Add to
									cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card px-4 border shadow-0">
						<div class="mask px-2" style="height: 50px;">
							<a href="#"><i
								class="fas fa-heart text-primary fa-lg float-end pt-3 m-2"></i></a>
						</div>
						<a href="#" class=""> <img
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/9.webp"
							class="card-img-top rounded-2" />
						</a>
						<div class="card-body d-flex flex-column pt-3 border-top">
							<a href="#" class="nav-link">Men's Denim Jeans Shorts</a>
							<div class="price-wrap mb-2">
								<strong class="">$80.50</strong>
							</div>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="#" class="btn btn-outline-primary w-100">Add to
									cart</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="card px-4 border shadow-0">
						<div class="mask px-2" style="height: 50px;">
							<a href="#"><i
								class="fas fa-heart text-primary fa-lg float-end pt-3 m-2"></i></a>
						</div>
						<a href="#" class=""> <img
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/10.webp"
							class="card-img-top rounded-2" />
						</a>
						<div class="card-body d-flex flex-column pt-3 border-top">
							<a href="#" class="nav-link">Mens T-shirt Cotton Base Layer
								Slim fit </a>
							<div class="price-wrap mb-2">
								<strong class="">$13.90</strong>
							</div>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="#" class="btn btn-outline-primary w-100">Add to
									cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Recommended -->




	<%@ include file="/views/Footer.jsp"%>
</body>
</html>