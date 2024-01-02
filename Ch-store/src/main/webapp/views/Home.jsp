<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!-- Products -->
<section>
	<div class="container my-5">
		<header class="mb-4">
			<h3>Mới nhất</h3>
		</header>

		<div class="row">
			<c:forEach items="${listProNew}" var="pn">
				<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
					<div class="card w-100 my-2 shadow-2-strong">
						<img src="images/${pn.images }" class="card-img-top"
							style="aspect-ratio: 1/1" />
						<div class="card-body d-flex flex-column">
							<h5 class="card-title">${pn.title}</h5>
							<p class="card-text">
								<fmt:formatNumber value="${pn.price}" type="currency"
									currencyCode="VND" maxFractionDigits="0" />
							</p>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="detail?id=${pn.ID}"
									class="btn btn-primary shadow-0 me-1">Chi tiết</a> <a
									href="add-to-cart?id=${pn.ID}"
									class="btn btn-light border px-3 py-2 icon-hover me-1"><i
									class="fas fa-shopping-cart"></i></a> <a
									href="${pageContext.request.contextPath }/cart?&action=buy&id=${pn.ID }"
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

<section>
	<div class="container my-5">
		<header class="mb-4">
			<h3>Bán chạy</h3>
		</header>

		<div class="row">
			<c:forEach items="${topProducts}" var="topP">
				<div class="col-lg-3 col-md-6 col-sm-6 d-flex">
					<div class="card w-100 my-2 shadow-2-strong">
						<img src="images/${topP.images }" class="card-img-top"
							style="aspect-ratio: 1/1" />
						<div class="card-body d-flex flex-column">
							<h5 class="card-title">${topP.title}</h5>
							<p class="card-text">
								<fmt:formatNumber value="${topP.price}" type="currency"
									currencyCode="VND" maxFractionDigits="0" />
							</p>
							<div
								class="card-footer d-flex align-items-end pt-3 px-0 pb-0 mt-auto">
								<a href="detail?id=${topP.id}"
									class="btn btn-primary shadow-0 me-1">Chi tiết</a> <a
									href="add-to-cart?id=${topP.id}"
									class="btn btn-light border px-3 py-2 icon-hover me-1"><i
									class="fas fa-shopping-cart"></i></a> <a
									href=""
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

<!-- Feature -->
<section class="mt-5" style="background-color: #f5f5f5;">
	<div class="container text-dark pt-3">
		<header class="pt-4 pb-3">
			<h3>Tại sao chọn chúng tôi</h3>
		</header>

		<div class="row mb-4">
			<div class="col-lg-4 col-md-6">
				<figure class="d-flex align-items-center mb-4">
					<span class="rounded-circle bg-white p-3 d-flex me-2 mb-2">
						<i class="fas fa-camera-retro fa-2x fa-fw text-primary floating"></i>
					</span>
					<figcaption class="info">
						<h6 class="title">Giá cả hợp lý</h6>
						<p></p>
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
						<h6 class="title">Chất lượng tốt</h6>
						<p></p>
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
						<h6 class="title">Giao hàng toàn thế giới</h6>
						<p></p>
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
						<h6 class="title">Sự hài lòng của khách hàng</h6>
						<p></p>
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
						<h6 class="title">Khách hàng vui vẻ</h6>
						<p></p>
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
						<h6 class="title">Nhiều mặt hàng</h6>
						<p></p>
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

<!-- Recently viewed -->
<section class="mt-5 mb-4">
	<div class="container text-dark">
		<header class="">
			<h3 class="section-title">Danh mục sản phẩm</h3>
		</header>

		<div class="row gy-3">
			<c:forEach items="${listC}" var="c">
				<div class="col-lg-2 col-md-4 col-4">
					<a href="category?id=${c.ID}" class="img-wrap"> <img
						height="200" width="200" class="img-thumbnail" src="${c.images}" />
					</a>
				</div>
			</c:forEach>
		</div>
	</div>
</section>
<!-- Recently viewed -->


