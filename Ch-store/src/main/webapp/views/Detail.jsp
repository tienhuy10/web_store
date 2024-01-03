<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Chi tiết sản phẩm</title>
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


	<!-- content -->
	<section class="py-5">
		<div class="container">
			<div class="row gx-5">
				<aside class="col-lg-6">
					<div class="border rounded-4 mb-3 d-flex justify-content-center">
						<a data-fslightbox="mygalley" class="rounded-4" target="_blank"
							data-type="image"
							href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big.webp">
							<img style="max-width: 100%; max-height: 100vh; margin: auto;"
							class="rounded-4 fit" src="images/${products.images}" />
						</a>
					</div>

				</aside>
				<main class="col-lg-6">
					<div class="ps-lg-3">
						<h4 class="title text-dark">${products.title}</h4>
						<div class="d-flex flex-row my-3">
							<div class="text-warning mb-1 me-2">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fas fa-star-half-alt"></i> <span class="ms-1">
									4.5 </span>
							</div>
							<span class="text-muted"><i
								class="fas fa-shopping-basket fa-sm mx-1"></i></span> <span
								class="text-success ms-2"></span>
						</div>

						<div class="mb-3">
							<span class="h5"><fmt:formatNumber
									value="${products.price}" type="currency" currencyCode="VND"
									maxFractionDigits="0" /></span> <span class="text-muted"></span>
						</div>
						<p>${products.description}</p>


						<a href="order-now?quantity=1&id=${products.ID }"
							class="btn btn-warning shadow-0"> Mua Ngay </a> <a
							href="add-to-cart?id=${products.ID}"
							class="btn btn-primary shadow-0"> <i
							class="me-1 fa fa-shopping-basket"></i> Thêm giỏ hàng
						</a> <a href="#"
							class="btn btn-light border border-secondary py-2 icon-hover px-3">
							<i class="me-1 fa fa-heart fa-lg"></i> Save
						</a>
					</div>
				</main>
			</div>
		</div>
	</section>
	<!-- content -->

	<section>
		<div class="container my-5">
			<header class="mb-4">
				<h3>Sản phẩm mới</h3>
			</header>

			<div class="row">
				<c:forEach items="${listProNew}" var="pn">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<div class="card px-4 border shadow-0 mb-4 mb-lg-0">
							<div class="mask px-2" style="height: 50px;">
								<div class="d-flex justify-content-between">
									<h6>
										<span class="badge bg-danger pt-1 mt-3 ms-2">Mới</span>
									</h6>
									<a href="#"><i
										class="fas fa-heart text-primary fa-lg float-end pt-3 m-2"></i></a>
								</div>
							</div>
							<a href="detail?id=${pn.ID}" class=""> <img width = "100px" height = "100px"
								src="images/${pn.images }" />
							</a>
							<div class="card-body d-flex flex-column pt-3 border-top">
								<a href="detail?id=${pn.ID}" class="nav-link">${pn.title}</a>
								<div class="price-wrap mb-2">
									<strong class=""><fmt:formatNumber value="${pn.price}" type="currency"
									currencyCode="VND" maxFractionDigits="0" /></strong>
									
								</div>
								<div
									class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
									<a href="add-to-cart?id=${pn.ID}" class="btn btn-outline-primary w-100">Thêm vào giỏ hàng</a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>

	<%@ include file="/views/Footer.jsp"%>
</body>
</html>