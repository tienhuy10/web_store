<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--Main Navigation-->
<header>
	<!-- Jumbotron -->
	<div class="p-3 text-center bg-white border-bottom">
		<div class="container">
			<div class="row gy-3">
				<!-- Left elements -->
				<div class="col-lg-2 col-sm-4 col-4">
					<a href="Home" target="" class="float-start"> <img
						src="https://mdbootstrap.com/img/logo/mdb-transaprent-noshadows.png"
						height="35" />
					</a>
				</div>
				<!-- Left elements -->

				<!-- Center elements -->
				<div class="order-lg-last col-lg-5 col-sm-8 col-8">
					<div class="d-flex float-end">
						<a href="<c:url value = "/login" />"
							class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center"
							target=""> <i class="fas fa-user-alt m-1 me-md-2"></i>
							<p class="d-none d-md-block mb-0">Sign in</p>
						</a> <a
							href="https://github.com/mdbootstrap/bootstrap-material-design"
							class="me-1 border rounded py-1 px-3 nav-link d-flex align-items-center"
							target="_blank"> <i class="fas fa-heart m-1 me-md-2"></i>
							<p class="d-none d-md-block mb-0">Wishlist</p>
						</a> <a
							href="https://github.com/mdbootstrap/bootstrap-material-design"
							class="border rounded py-1 px-3 nav-link d-flex align-items-center"
							target="_blank"> <i class="fas fa-shopping-cart m-1 me-md-2"></i>
							<p class="d-none d-md-block mb-0">My cart</p>
						</a>
					</div>
				</div>
				<!-- Center elements -->

				<!-- Right elements -->
				<form action="search" method="post"
					class="col-lg-5 col-md-12 col-12">
					<div class="input-group float-center">
						<div class="form-outline">
							<input value="${txtS}" type="text" name="txt" id="form1" class="form-control" /> <label
								class="form-label" for="form1">Search</label>
						</div>
						<button type="submit" class="btn btn-primary shadow-0">
							<i class="fas fa-search"></i>
						</button>
					</div>
				</form>
				<!-- Right elements -->
			</div>
		</div>
	</div>
	<!-- Jumbotron -->

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary mb-4">
		<!-- Container wrapper -->
		<div
			class="container justify-content-center justify-content-md-between">
			<!-- Toggle button -->
			<button class="navbar-toggler" type="button"
				data-mdb-toggle="collapse" data-mdb-target="#navbarLeftAlignExample"
				aria-controls="navbarLeftAlignExample" aria-expanded="false"
				aria-label="Toggle navigation">
				<i class="fas fa-bars"></i>
			</button>

			<!-- Collapsible wrapper -->
			<div class="collapse navbar-collapse" id="navbarLeftAlignExample">
				<!-- Left links -->
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<c:forEach items="${listM}" var="o">
						<li class="nav-item"><a class="nav-link text-white"
							href="menu?menuID=${o.menuID}">${o.menuName}</a></li>
					</c:forEach>
				</ul>
				<!-- Left links -->
			</div>
		</div>
		<!-- Container wrapper -->
	</nav>
	<!-- Navbar -->
</header>