<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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

	<!-- sidebar + content -->
	<section class="">
		<div class="container">
			<div class="row">
				<!-- sidebar -->
				<div class="col-lg-3">
					<!-- Toggle button -->
					<button class="btn btn-outline-secondary mb-3 w-100 d-lg-none"
						type="button" data-mdb-toggle="collapse"
						data-mdb-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span>Show filter</span>
					</button>
					<!-- Collapsible wrapper -->
					<div class="collapse card d-lg-block mb-5"
						id="navbarSupportedContent">
						<div class="accordion" id="accordionPanelsStayOpenExample">
							<div class="accordion-item">
								<h2 class="accordion-header" id="headingOne">
									<button class="accordion-button text-dark bg-light"
										type="button" data-mdb-toggle="collapse"
										data-mdb-target="#panelsStayOpen-collapseOne"
										aria-expanded="true"
										aria-controls="panelsStayOpen-collapseOne">Danh mục
										sản phẩm</button>
								</h2>
								<div id="panelsStayOpen-collapseOne"
									class="accordion-collapse collapse show"
									aria-labelledby="headingOne">
									<div class="accordion-body">
										<ul class="list-unstyled">
											<c:forEach items="${listCategories}" var="lc">
												<li><a href="category?id=${lc.ID}"
													class="text-dark d-block p-2" data-bs-toggle="pill"
													role="tab" aria-selected="false">${lc.name}</a></li>
											</c:forEach>
										</ul>
									</div>
								</div>

							</div>

							<!-- 							<div class="accordion-item"> -->
							<!-- 								<h2 class="accordion-header" id="headingTwo"> -->
							<!-- 									<button class="accordion-button text-dark bg-light" -->
							<!-- 										type="button" data-mdb-toggle="collapse" -->
							<!-- 										data-mdb-target="#panelsStayOpen-collapseTwo" -->
							<!-- 										aria-expanded="true" -->
							<!-- 										aria-controls="panelsStayOpen-collapseTwo">Brands</button> -->
							<!-- 								</h2> -->
							<!-- 								<div id="panelsStayOpen-collapseTwo" -->
							<!-- 									class="accordion-collapse collapse show" -->
							<!-- 									aria-labelledby="headingTwo"> -->
							<!-- 									<div class="accordion-body"> -->
							<!-- 										<div> -->
							<!-- 											Checked checkbox -->
							<!-- 											<div class="form-check"> -->
							<!-- 												<input class="form-check-input" type="checkbox" value="" -->
							<!-- 													id="flexCheckChecked1" checked /> <label -->
							<!-- 													class="form-check-label" for="flexCheckChecked1">Mercedes</label> -->
							<!-- 												<span class="badge badge-secondary float-end">120</span> -->
							<!-- 											</div> -->
							<!-- 											Checked checkbox -->
							<!-- 											<div class="form-check"> -->
							<!-- 												<input class="form-check-input" type="checkbox" value="" -->
							<!-- 													id="flexCheckChecked2" checked /> <label -->
							<!-- 													class="form-check-label" for="flexCheckChecked2">Toyota</label> -->
							<!-- 												<span class="badge badge-secondary float-end">15</span> -->
							<!-- 											</div> -->
							<!-- 											Checked checkbox -->
							<!-- 											<div class="form-check"> -->
							<!-- 												<input class="form-check-input" type="checkbox" value="" -->
							<!-- 													id="flexCheckChecked3" checked /> <label -->
							<!-- 													class="form-check-label" for="flexCheckChecked3">Mitsubishi</label> -->
							<!-- 												<span class="badge badge-secondary float-end">35</span> -->
							<!-- 											</div> -->
							<!-- 											Checked checkbox -->
							<!-- 											<div class="form-check"> -->
							<!-- 												<input class="form-check-input" type="checkbox" value="" -->
							<!-- 													id="flexCheckChecked4" checked /> <label -->
							<!-- 													class="form-check-label" for="flexCheckChecked4">Nissan</label> -->
							<!-- 												<span class="badge badge-secondary float-end">89</span> -->
							<!-- 											</div> -->
							<!-- 											Default checkbox -->
							<!-- 											<div class="form-check"> -->
							<!-- 												<input class="form-check-input" type="checkbox" value="" -->
							<!-- 													id="flexCheckDefault" /> <label class="form-check-label" -->
							<!-- 													for="flexCheckDefault">Honda</label> <span -->
							<!-- 													class="badge badge-secondary float-end">30</span> -->
							<!-- 											</div> -->
							<!-- 											Default checkbox -->
							<!-- 											<div class="form-check"> -->
							<!-- 												<input class="form-check-input" type="checkbox" value="" -->
							<!-- 													id="flexCheckDefault" /> <label class="form-check-label" -->
							<!-- 													for="flexCheckDefault">Suzuki</label> <span -->
							<!-- 													class="badge badge-secondary float-end">30</span> -->
							<!-- 											</div> -->
							<!-- 										</div> -->
							<!-- 									</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 							<div class="accordion-item"> -->
							<!-- 								<h2 class="accordion-header" id="headingThree"> -->
							<!-- 									<button class="accordion-button text-dark bg-light" -->
							<!-- 										type="button" data-mdb-toggle="collapse" -->
							<!-- 										data-mdb-target="#panelsStayOpen-collapseThree" -->
							<!-- 										aria-expanded="false" -->
							<!-- 										aria-controls="panelsStayOpen-collapseThree">Price</button> -->
							<!-- 								</h2> -->
							<!-- 								<div id="panelsStayOpen-collapseThree" -->
							<!-- 									class="accordion-collapse collapse show" -->
							<!-- 									aria-labelledby="headingThree"> -->
							<!-- 									<div class="accordion-body"> -->
							<!-- 										<div class="range"> -->
							<!-- 											<input type="range" class="form-range" id="customRange1" /> -->
							<!-- 										</div> -->
							<!-- 										<div class="row mb-3"> -->
							<!-- 											<div class="col-6"> -->
							<!-- 												<p class="mb-0">Min</p> -->
							<!-- 												<div class="form-outline"> -->
							<!-- 													<input type="number" id="typeNumber" class="form-control" /> -->
							<!-- 													<label class="form-label" for="typeNumber">$0</label> -->
							<!-- 												</div> -->
							<!-- 											</div> -->
							<!-- 											<div class="col-6"> -->
							<!-- 												<p class="mb-0">Max</p> -->
							<!-- 												<div class="form-outline"> -->
							<!-- 													<input type="number" id="typeNumber" class="form-control" /> -->
							<!-- 													<label class="form-label" for="typeNumber">$1,0000</label> -->
							<!-- 												</div> -->
							<!-- 											</div> -->
							<!-- 										</div> -->
							<!-- 										<button type="button" -->
							<!-- 											class="btn btn-white w-100 border border-secondary">apply</button> -->
							<!-- 									</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 							<div class="accordion-item"> -->
							<!-- 								<h2 class="accordion-header" id="headingThree"> -->
							<!-- 									<button class="accordion-button text-dark bg-light" -->
							<!-- 										type="button" data-mdb-toggle="collapse" -->
							<!-- 										data-mdb-target="#panelsStayOpen-collapseFour" -->
							<!-- 										aria-expanded="false" -->
							<!-- 										aria-controls="panelsStayOpen-collapseFour">Size</button> -->
							<!-- 								</h2> -->
							<!-- 								<div id="panelsStayOpen-collapseFour" -->
							<!-- 									class="accordion-collapse collapse show" -->
							<!-- 									aria-labelledby="headingThree"> -->
							<!-- 									<div class="accordion-body"> -->
							<!-- 										<input type="checkbox" -->
							<!-- 											class="btn-check border justify-content-center" -->
							<!-- 											id="btn-check1" checked autocomplete="off" /> <label -->
							<!-- 											class="btn btn-white mb-1 px-1" style="width: 60px;" -->
							<!-- 											for="btn-check1">XS</label> <input type="checkbox" -->
							<!-- 											class="btn-check border justify-content-center" -->
							<!-- 											id="btn-check2" checked autocomplete="off" /> <label -->
							<!-- 											class="btn btn-white mb-1 px-1" style="width: 60px;" -->
							<!-- 											for="btn-check2">SM</label> <input type="checkbox" -->
							<!-- 											class="btn-check border justify-content-center" -->
							<!-- 											id="btn-check3" checked autocomplete="off" /> <label -->
							<!-- 											class="btn btn-white mb-1 px-1" style="width: 60px;" -->
							<!-- 											for="btn-check3">LG</label> <input type="checkbox" -->
							<!-- 											class="btn-check border justify-content-center" -->
							<!-- 											id="btn-check4" checked autocomplete="off" /> <label -->
							<!-- 											class="btn btn-white mb-1 px-1" style="width: 60px;" -->
							<!-- 											for="btn-check4">XXL</label> -->
							<!-- 									</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
							<!-- 							<div class="accordion-item"> -->
							<!-- 								<h2 class="accordion-header" id="headingThree"> -->
							<!-- 									<button class="accordion-button text-dark bg-light" -->
							<!-- 										type="button" data-mdb-toggle="collapse" -->
							<!-- 										data-mdb-target="#panelsStayOpen-collapseFive" -->
							<!-- 										aria-expanded="false" -->
							<!-- 										aria-controls="panelsStayOpen-collapseFive">Ratings</button> -->
							<!-- 								</h2> -->
							<!-- 								<div id="panelsStayOpen-collapseFive" -->
							<!-- 									class="accordion-collapse collapse show" -->
							<!-- 									aria-labelledby="headingThree"> -->
							<!-- 									<div class="accordion-body"> -->
							<!-- 										Default checkbox -->
							<!-- 										<div class="form-check"> -->
							<!-- 											<input class="form-check-input" type="checkbox" value="" -->
							<!-- 												id="flexCheckDefault" checked /> <label -->
							<!-- 												class="form-check-label" for="flexCheckDefault"> <i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-warning"></i> <i -->
							<!-- 												class="fas fa-star text-warning"></i> -->
							<!-- 											</label> -->
							<!-- 										</div> -->
							<!-- 										Default checkbox -->
							<!-- 										<div class="form-check"> -->
							<!-- 											<input class="form-check-input" type="checkbox" value="" -->
							<!-- 												id="flexCheckDefault" checked /> <label -->
							<!-- 												class="form-check-label" for="flexCheckDefault"> <i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-warning"></i> <i -->
							<!-- 												class="fas fa-star text-secondary"></i> -->
							<!-- 											</label> -->
							<!-- 										</div> -->
							<!-- 										Default checkbox -->
							<!-- 										<div class="form-check"> -->
							<!-- 											<input class="form-check-input" type="checkbox" value="" -->
							<!-- 												id="flexCheckDefault" checked /> <label -->
							<!-- 												class="form-check-label" for="flexCheckDefault"> <i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-secondary"></i> <i -->
							<!-- 												class="fas fa-star text-secondary"></i> -->
							<!-- 											</label> -->
							<!-- 										</div> -->
							<!-- 										Default checkbox -->
							<!-- 										<div class="form-check"> -->
							<!-- 											<input class="form-check-input" type="checkbox" value="" -->
							<!-- 												id="flexCheckDefault" checked /> <label -->
							<!-- 												class="form-check-label" for="flexCheckDefault"> <i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-warning"></i><i -->
							<!-- 												class="fas fa-star text-secondary"></i><i -->
							<!-- 												class="fas fa-star text-secondary"></i> <i -->
							<!-- 												class="fas fa-star text-secondary"></i> -->
							<!-- 											</label> -->
							<!-- 										</div> -->
							<!-- 									</div> -->
							<!-- 								</div> -->
							<!-- 							</div> -->
						</div>
					</div>
				</div>
				<!-- sidebar -->
				<!-- content -->
				<div class="col-lg-9">
					<header
						class="d-sm-flex align-items-center border-bottom mb-4 pb-3">
						<strong class="d-block py-2">Tên danh mục </strong>
						<div class="ms-auto">
							<select class="form-select d-inline-block w-auto border pt-1">
								<option value="0">Best match</option>
								<option value="1">Recommended</option>
								<option value="2">High rated</option>
								<option value="3">Randomly</option>
							</select>
							<div class="btn-group shadow-0 border">
								<a href="#" class="btn btn-light" title="List view"> <i
									class="fa fa-bars fa-lg"></i>
								</a> <a href="#" class="btn btn-light active" title="Grid view">
									<i class="fa fa-th fa-lg"></i>
								</a>
							</div>
						</div>
					</header>

					<div class="row">
						<c:forEach items="${listProducts}" var='p'>
							<div class="col-lg-4 col-md-6 col-sm-6 d-flex">
								<div class="card w-100 my-2 shadow-2-strong">
									<img src="${p.images}" />
									<div class="card-body d-flex flex-column">
										<div class="d-flex flex-row">
											<h5 class="mb-1 me-1">${p.price}</h5>
											<span class="text-danger"><s>${p.price}</s></span>
										</div>
										<p class="card-text">${p.title}</p>
										<div
											class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
											<a class="btn btn-primary shadow-0 me-1" href="detail?id=${p.ID}">Chi tiết</a> 
											<a href="${pageContext.request.contextPath }/cart?&action=buy&id=${p.ID }" class="btn btn-light border px-3 py-2 icon-hover me-1">
												<i class="fas fa-shopping-cart"></i></a> 
											<a href="#!" class="btn btn-light border px-3 py-2 icon-hover"> 
												<i class="fas fa-heart fa-lg text-secondary"></i></a>

										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>

					<hr />

					<!-- Pagination -->
					<nav aria-label="Page navigation example"
						class="d-flex justify-content-center mt-3">
						<ul class="pagination">
							<li class="page-item disabled"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item active"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
					<!-- Pagination -->
				</div>
			</div>
		</div>
	</section>
	<!-- sidebar + content -->

	<!-- Footer -->
	<%@ include file="/views/Footer.jsp"%>
	<!-- Footer -->
</body>