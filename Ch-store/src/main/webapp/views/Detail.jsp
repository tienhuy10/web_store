<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Material Design for Bootstrap</title>
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
							class="rounded-4 fit" src="${products.images}" />
						</a>
					</div>
					<!-- 					<div class="d-flex justify-content-center mb-3"> -->
					<!-- 						<a data-fslightbox="mygalley" class="border mx-1 rounded-2" -->
					<!-- 							target="_blank" data-type="image" -->
					<!-- 							href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big1.webp" -->
					<!-- 							class="item-thumb"> <img width="60" height="60" -->
					<!-- 							class="rounded-2" -->
					<!-- 							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big1.webp" /> -->
					<!-- 						</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" -->
					<!-- 							target="_blank" data-type="image" -->
					<!-- 							href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big2.webp" -->
					<!-- 							class="item-thumb"> <img width="60" height="60" -->
					<!-- 							class="rounded-2" -->
					<!-- 							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big2.webp" /> -->
					<!-- 						</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" -->
					<!-- 							target="_blank" data-type="image" -->
					<!-- 							href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big3.webp" -->
					<!-- 							class="item-thumb"> <img width="60" height="60" -->
					<!-- 							class="rounded-2" -->
					<!-- 							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big3.webp" /> -->
					<!-- 						</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" -->
					<!-- 							target="_blank" data-type="image" -->
					<!-- 							href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big4.webp" -->
					<!-- 							class="item-thumb"> <img width="60" height="60" -->
					<!-- 							class="rounded-2" -->
					<!-- 							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big4.webp" /> -->
					<!-- 						</a> <a data-fslightbox="mygalley" class="border mx-1 rounded-2" -->
					<!-- 							target="_blank" data-type="image" -->
					<!-- 							href="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big.webp" -->
					<!-- 							class="item-thumb"> <img width="60" height="60" -->
					<!-- 							class="rounded-2" -->
					<!-- 							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/detail1/big.webp" /> -->
					<!-- 						</a> -->
					<!-- 					</div> -->
					<!-- 					thumbs-wrap.// -->
					<!-- gallery-wrap .end// -->
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
								class="fas fa-shopping-basket fa-sm mx-1"></i>154 orders</span> <span
								class="text-success ms-2">In stock</span>
						</div>

						<div class="mb-3">
							<span class="h5"><fmt:formatNumber
									value="${products.price}" type="currency" currencyCode="VND"
									maxFractionDigits="0" /></span> <span class="text-muted"></span>
						</div>

						<p>${products.description}</p>


						<a href="order-now?quantity=1&id=${products.ID }" class="btn btn-warning shadow-0">
							Mua Ngay </a> <a href="add-to-cart?id=${products.ID}" class="btn btn-primary shadow-0"> <i
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

	<section class="bg-light border-top py-4">
		<div class="container">
			<div class="row gx-4">
				<div class="col-lg-8 mb-4">
					<div class="border rounded-2 px-3 py-2 bg-white">
						<!-- Pills navs -->
						<ul class="nav nav-pills nav-justified mb-3" id="ex1"
							role="tablist">
							<li class="nav-item d-flex" role="presentation"><a
								class="nav-link d-flex align-items-center justify-content-center w-100 active"
								id="ex1-tab-1" data-mdb-toggle="pill" href="#ex1-pills-1"
								role="tab" aria-controls="ex1-pills-1" aria-selected="true">Specification</a>
							</li>
							<li class="nav-item d-flex" role="presentation"><a
								class="nav-link d-flex align-items-center justify-content-center w-100"
								id="ex1-tab-2" data-mdb-toggle="pill" href="#ex1-pills-2"
								role="tab" aria-controls="ex1-pills-2" aria-selected="false">Warranty
									info</a></li>
							<li class="nav-item d-flex" role="presentation"><a
								class="nav-link d-flex align-items-center justify-content-center w-100"
								id="ex1-tab-3" data-mdb-toggle="pill" href="#ex1-pills-3"
								role="tab" aria-controls="ex1-pills-3" aria-selected="false">Shipping
									info</a></li>
							<li class="nav-item d-flex" role="presentation"><a
								class="nav-link d-flex align-items-center justify-content-center w-100"
								id="ex1-tab-4" data-mdb-toggle="pill" href="#ex1-pills-4"
								role="tab" aria-controls="ex1-pills-4" aria-selected="false">Seller
									profile</a></li>
						</ul>
						<!-- Pills navs -->

						<!-- Pills content -->
						<div class="tab-content" id="ex1-content">
							<div class="tab-pane fade show active" id="ex1-pills-1"
								role="tabpanel" aria-labelledby="ex1-tab-1">
								<p>With supporting text below as a natural lead-in to
									additional content. Lorem ipsum dolor sit amet, consectetur
									adipisicing elit, sed do eiusmod tempor incididunt ut labore et
									dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
									exercitation ullamco laboris nisi ut aliquip ex ea commodo
									consequat. Duis aute irure dolor in reprehenderit in voluptate
									velit esse cillum dolore eu fugiat nulla pariatur.</p>
								<div class="row mb-2">
									<div class="col-12 col-md-6">
										<ul class="list-unstyled mb-0">
											<li><i class="fas fa-check text-success me-2"></i>Some
												great feature name here</li>
											<li><i class="fas fa-check text-success me-2"></i>Lorem
												ipsum dolor sit amet, consectetur</li>
											<li><i class="fas fa-check text-success me-2"></i>Duis
												aute irure dolor in reprehenderit</li>
											<li><i class="fas fa-check text-success me-2"></i>Optical
												heart sensor</li>
										</ul>
									</div>
									<div class="col-12 col-md-6 mb-0">
										<ul class="list-unstyled">
											<li><i class="fas fa-check text-success me-2"></i>Easy
												fast and ver good</li>
											<li><i class="fas fa-check text-success me-2"></i>Some
												great feature name here</li>
											<li><i class="fas fa-check text-success me-2"></i>Modern
												style and design</li>
										</ul>
									</div>
								</div>
								<table class="table border mt-3 mb-2">
									<tr>
										<th class="py-2">Display:</th>
										<td class="py-2">13.3-inch LED-backlit display with IPS</td>
									</tr>
									<tr>
										<th class="py-2">Processor capacity:</th>
										<td class="py-2">2.3GHz dual-core Intel Core i5</td>
									</tr>
									<tr>
										<th class="py-2">Camera quality:</th>
										<td class="py-2">720p FaceTime HD camera</td>
									</tr>
									<tr>
										<th class="py-2">Memory</th>
										<td class="py-2">8 GB RAM or 16 GB RAM</td>
									</tr>
									<tr>
										<th class="py-2">Graphics</th>
										<td class="py-2">Intel Iris Plus Graphics 640</td>
									</tr>
								</table>
							</div>
							<div class="tab-pane fade mb-2" id="ex1-pills-2" role="tabpanel"
								aria-labelledby="ex1-tab-2">
								Tab content or sample information now <br /> Lorem ipsum dolor
								sit amet, consectetur adipisicing elit, sed do eiusmod tempor
								incididunt ut labore et dolore magna aliqua. Ut enim ad minim
								veniam, quis nostrud exercitation ullamco laboris nisi ut
								aliquip ex ea commodo consequat. Duis aute irure dolor in
								reprehenderit in voluptate velit esse cillum dolore eu fugiat
								nulla pariatur. Excepteur sint occaecat cupidatat non proident,
								sunt in culpa qui officia deserunt mollit anim id est laborum.
								Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo
							</div>
							<div class="tab-pane fade mb-2" id="ex1-pills-3" role="tabpanel"
								aria-labelledby="ex1-tab-3">
								Another tab content or sample information now <br /> Dolor sit
								amet, consectetur adipisicing elit, sed do eiusmod tempor
								incididunt ut labore et dolore magna aliqua. Ut enim ad minim
								veniam, quis nostrud exercitation ullamco laboris nisi ut
								aliquip ex ea commodo consequat. Duis aute irure dolor in
								reprehenderit in voluptate velit esse cillum dolore eu fugiat
								nulla pariatur. Excepteur sint occaecat cupidatat non proident,
								sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
							<div class="tab-pane fade mb-2" id="ex1-pills-4" role="tabpanel"
								aria-labelledby="ex1-tab-4">
								Some other tab content or sample information now <br /> Lorem
								ipsum dolor sit amet, consectetur adipisicing elit, sed do
								eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
								enim ad minim veniam, quis nostrud exercitation ullamco laboris
								nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
								in reprehenderit in voluptate velit esse cillum dolore eu fugiat
								nulla pariatur. Excepteur sint occaecat cupidatat non proident,
								sunt in culpa qui officia deserunt mollit anim id est laborum.
							</div>
						</div>
						<!-- Pills content -->
					</div>
				</div>
				<div class="col-lg-4">
					<div class="px-0 border rounded-2 shadow-0">
						<div class="card">
							<div class="card-body">
								<h5 class="card-title">Similar items</h5>
								<div class="d-flex mb-3">
									<a href="#" class="me-3"> <img
										src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/8.webp"
										style="min-width: 96px; height: 96px;"
										class="img-md img-thumbnail" />
									</a>
									<div class="info">
										<a href="#" class="nav-link mb-1"> Rucksack Backpack Large
											<br /> Line Mounts
										</a> <strong class="text-dark"> $38.90</strong>
									</div>
								</div>

								<div class="d-flex mb-3">
									<a href="#" class="me-3"> <img
										src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/9.webp"
										style="min-width: 96px; height: 96px;"
										class="img-md img-thumbnail" />
									</a>
									<div class="info">
										<a href="#" class="nav-link mb-1"> Summer New Men's Denim
											<br /> Jeans Shorts
										</a> <strong class="text-dark"> $29.50</strong>
									</div>
								</div>

								<div class="d-flex mb-3">
									<a href="#" class="me-3"> <img
										src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/10.webp"
										style="min-width: 96px; height: 96px;"
										class="img-md img-thumbnail" />
									</a>
									<div class="info">
										<a href="#" class="nav-link mb-1"> T-shirts with multiple
											colors, for men and lady </a> <strong class="text-dark">
											$120.00</strong>
									</div>
								</div>

								<div class="d-flex">
									<a href="#" class="me-3"> <img
										src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/items/11.webp"
										style="min-width: 96px; height: 96px;"
										class="img-md img-thumbnail" />
									</a>
									<div class="info">
										<a href="#" class="nav-link mb-1"> Blazer Suit Dress
											Jacket for Men, Blue color </a> <strong class="text-dark">
											$339.90</strong>
									</div>
								</div>
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