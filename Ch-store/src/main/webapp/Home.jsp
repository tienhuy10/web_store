<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
	<!--Main Navigation-->
	<header>

		<%@ include file="/Head.jsp"%>

		<!-- Navbar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-white">
			<!-- Container wrapper -->
			<div
				class="container justify-content-center justify-content-md-between">
				<!-- Toggle button -->
				<button class="navbar-toggler border py-2 text-dark" type="button"
					data-mdb-toggle="collapse"
					data-mdb-target="#navbarLeftAlignExample"
					aria-controls="navbarLeftAlignExample" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-bars"></i>
				</button>

				<!-- Collapsible wrapper -->
				<div class="collapse navbar-collapse" id="navbarLeftAlignExample">
					<!-- Left links -->
					<ul class="navbar-nav me-auto mb-2 mb-lg-0">
						<c:forEach items="${listM}" var="o">
							<li class="nav-item"><a class="nav-link text-dark"
								href="menu?menuID=${o.menuID}">${o.menuName}</a></li>
						</c:forEach>
					</ul>
					<!-- Left links -->
				</div>
			</div>
			<!-- Container wrapper -->
		</nav>
		<!-- Navbar -->
		<!-- Jumbotron -->
		<div class="bg-primary text-white py-5">
			<div class="container py-5">
				<h1>
					Best products & <br /> brands in our store
				</h1>
				<p>Trendy Products, Factory Prices, Excellent Service</p>
				<button type="button" class="btn btn-outline-light">Learn
					more</button>
				<button type="button"
					class="btn btn-light shadow-0 text-primary pt-2 border border-white">
					<span class="pt-1">Purchase now</span>
				</button>
			</div>
		</div>
		<!-- Jumbotron -->
	</header>
	<!-- Products -->
	<section>
		<div class="container my-5">
			<header class="mb-4">
				<h3>Sản Phẩm Mới</h3>
			</header>

			<div class="row">
				<c:forEach items="${listProNew}" var="pn">
					<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
						<div class="card w-100 my-2 shadow-2-strong">
							<img src="${pn.images }" class="card-img-top"
								style="aspect-ratio: 1/1" />
							<div class="card-body d-flex flex-column">
								<h5 class="card-title">${pn.title}</h5>
								<p class="card-text">${pn.price}</p>
								<div
									class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
									<a href="#!" class="btn btn-primary shadow-0 me-1">Chi tiết</a>

									<a href="#!"
										class="btn btn-light border px-3 py-2 icon-hover me-1"><i
										class="fas fa-shopping-cart"></i></a> <a href="#!"
										class="btn btn-light border px-3 py-2 icon-hover"> <i
										class="fas fa-heart fa-lg text-secondary"></i>
									</a>

								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</section>
	<!-- Products -->

	<!-- Feature -->
	<section class="mt-5" style="background-color: #f5f5f5;">
		<div class="container text-dark pt-3">
			<header class="pt-4 pb-3">
				<h3>Why choose us</h3>
			</header>

			<div class="row mb-4">
				<div class="col-lg-4 col-md-6">
					<figure class="d-flex align-items-center mb-4">
						<span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
							<i class="fas fa-camera-retro fa-2x fa-fw text-primary floating"></i>
						</span>
						<figcaption class="info">
							<h6 class="title">Reasonable prices</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
								sed do eiusmor</p>
						</figcaption>
					</figure>
					<!-- itemside // -->
				</div>
				<!-- col // -->
				<div class="col-lg-4 col-md-6">
					<figure class="d-flex align-items-center mb-4">
						<span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
							<i class="fas fa-star fa-2x fa-fw text-primary floating"></i>
						</span>
						<figcaption class="info">
							<h6 class="title">Best quality</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
								sed do eiusmor</p>
						</figcaption>
					</figure>
					<!-- itemside // -->
				</div>
				<!-- col // -->
				<div class="col-lg-4 col-md-6">
					<figure class="d-flex align-items-center mb-4">
						<span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
							<i class="fas fa-plane fa-2x fa-fw text-primary floating"></i>
						</span>
						<figcaption class="info">
							<h6 class="title">Worldwide shipping</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
								sed do eiusmor</p>
						</figcaption>
					</figure>
					<!-- itemside // -->
				</div>
				<!-- col // -->
				<div class="col-lg-4 col-md-6">
					<figure class="d-flex align-items-center mb-4">
						<span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
							<i class="fas fa-users fa-2x fa-fw text-primary floating"></i>
						</span>
						<figcaption class="info">
							<h6 class="title">Customer satisfaction</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
								sed do eiusmor</p>
						</figcaption>
					</figure>
					<!-- itemside // -->
				</div>
				<!-- col // -->
				<div class="col-lg-4 col-md-6">
					<figure class="d-flex align-items-center mb-4">
						<span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
							<i class="fas fa-thumbs-up fa-2x fa-fw text-primary floating"></i>
						</span>
						<figcaption class="info">
							<h6 class="title">Happy customers</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
								sed do eiusmor</p>
						</figcaption>
					</figure>
					<!-- itemside // -->
				</div>
				<!-- col // -->
				<div class="col-lg-4 col-md-6">
					<figure class="d-flex align-items-center mb-4">
						<span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
							<i class="fas fa-box fa-2x fa-fw text-primary floating"></i>
						</span>
						<figcaption class="info">
							<h6 class="title">Thousand items</h6>
							<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
								sed do eiusmor</p>
						</figcaption>
					</figure>
					<!-- itemside // -->
				</div>
				<!-- col // -->
			</div>
		</div>
		<!-- container end.// -->
	</section>
	<!-- Feature -->

	<!-- Blog -->
	<section class="mt-5 mb-4">
		<div class="container text-dark">
			<header class="mb-4">
				<h3>Blog posts</h3>
			</header>

			<div class="row">
				<div class="col-lg-3 col-md-6 col-sm-6 col-12">
					<article>
						<a href="#" class="img-fluid"> <img class="rounded w-100"
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/posts/1.webp"
							style="object-fit: cover;" height="160" />
						</a>
						<div class="mt-2 text-muted small d-block mb-1">
							<span> <i class="fa fa-calendar-alt fa-sm"></i> 23.12.2022
							</span> <a href="#"><h6 class="text-dark">How to promote brands</h6></a>
							<p>When you enter into any new area of science, you almost
								reach</p>
						</div>
					</article>
				</div>
				<!-- col.// -->
				<div class="col-lg-3 col-md-6 col-sm-6 col-12">
					<article>
						<a href="#" class="img-fluid"> <img class="rounded w-100"
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/posts/2.webp"
							style="object-fit: cover;" height="160" />
						</a>
						<div class="mt-2 text-muted small d-block mb-1">
							<span> <i class="fa fa-calendar-alt fa-sm"></i> 13.12.2022
							</span> <a href="#"><h6 class="text-dark">How we handle
									shipping</h6></a>
							<p>When you enter into any new area of science, you almost
								reach</p>
						</div>
					</article>
				</div>
				<!-- col.// -->
				<div class="col-lg-3 col-md-6 col-sm-6 col-12">
					<article>
						<a href="#" class="img-fluid"> <img class="rounded w-100"
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/posts/3.webp"
							style="object-fit: cover;" height="160" />
						</a>
						<div class="mt-2 text-muted small d-block mb-1">
							<span> <i class="fa fa-calendar-alt fa-sm"></i> 25.11.2022
							</span> <a href="#"><h6 class="text-dark">How to promote brands</h6></a>
							<p>When you enter into any new area of science, you almost
								reach</p>
						</div>
					</article>
				</div>
				<!-- col.// -->
				<div class="col-lg-3 col-md-6 col-sm-6 col-12">
					<article>
						<a href="#" class="img-fluid"> <img class="rounded w-100"
							src="https://bootstrap-ecommerce.com/bootstrap5-ecommerce/images/posts/4.webp"
							style="object-fit: cover;" height="160" />
						</a>
						<div class="mt-2 text-muted small d-block mb-1">
							<span> <i class="fa fa-calendar-alt fa-sm"></i> 03.09.2022
							</span> <a href="#"><h6 class="text-dark">Success story of
									sellers</h6></a>
							<p>When you enter into any new area of science, you almost
								reach</p>
						</div>
					</article>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog -->

	<!-- Footer -->
	<%@ include file="/Footer.jsp"%>
	<!-- Footer -->
	<!-- MDB -->
	<script type="text/javascript" src="js/mdb.min.js"></script>
	<!-- Custom scripts -->
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>

