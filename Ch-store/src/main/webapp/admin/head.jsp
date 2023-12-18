<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">
	<div class="d-flex align-items-center justify-content-between">
		<a href="Home" class="logo d-flex align-items-center"> <img
			src="admin/assets/img/logo.png" alt="" /> <span
			class="d-none d-lg-block">CH-STORE</span>
		</a> <i class="bi bi-list toggle-sidebar-btn"></i>
	</div>
	<!-- End Logo -->

	<div class="search-bar">
		<form class="search-form d-flex align-items-center" method="POST"
			action="#">
			<input type="text" name="query" placeholder="Search"
				title="Enter search keyword" />
			<button type="submit" title="Search">
				<i class="bi bi-search"></i>
			</button>
		</form>
	</div>
	<!-- End Search Bar -->

	<nav class="header-nav ms-auto">
		<ul class="d-flex align-items-center">
			<li class="nav-item d-block d-lg-none"><a
				class="nav-link nav-icon search-bar-toggle" href="#"> <i
					class="bi bi-search"></i>
			</a></li>
			<!-- End Search Icon-->

			

			
			<!-- End Messages Nav -->

			<li class="nav-item dropdown pe-3"><a
				class="nav-link nav-profile d-flex align-items-center pe-0" href="#"
				data-bs-toggle="dropdown"> <img
					src="https://media.istockphoto.com/id/1479681845/vi/vec-to/gear-qu%E1%BA%A3n-l%C3%BD-ng%C6%B0%E1%BB%9Di-%C4%91%C3%A0n-%C3%B4ng-con-ng%C6%B0%E1%BB%9Di-qu%E1%BA%A3n-tr%E1%BB%8B-vi%C3%AAn-qu%E1%BA%A3n-tr%E1%BB%8B-ng%C6%B0%E1%BB%9Di-qu%E1%BA%A3n-l%C3%BD-icon.jpg?s=170667a&w=0&k=20&c=mNNyg4sCqfIDyDusDLmOmiTRJYp893e88A-YDV3mhNc=" alt="Profile"
					class="rounded-circle" /> <span
					class="d-none d-md-block  ps-2">Quản trị viên</span>
			</a> <!-- End Profile Iamge Icon -->

				
	</nav>
	<!-- End Icons Navigation -->
</header>
<!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
	<ul class="sidebar-nav" id="sidebar-nav">
		<li class="nav-item"><a class="nav-link" href="home-admin"> <i
				class="bi bi-grid"></i> <span>Bảng điều khiển</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="<c:url value = "/admin-menu" />"> <i
				class="bi bi-displayport"></i> <span>Quản lý Menu</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="<c:url value = "/admin-products" />"> <i
				class="bi bi-bag-check"></i> <span>Quản lý sản phẩm</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="<c:url value = "/admin-category" />"> <i
				class="bi bi-clipboard-data"></i> <span>Quản lý danh mục</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="<c:url value = "/admin-cart" />"> <i class="bi bi-cart2"></i>
				<span>Quản lý Đơn Hàng</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="<c:url value = "/admin-account" />"> <i
				class="bi bi-person-lines-fill"></i> <span>Quản lý tài khoản</span>
		</a></li>
		<li class="nav-item"><a class="nav-link collapsed"
			href="<c:url value = "/admin-contact" />"> <i
				class="bi bi-envelope"></i> <span>Quản lý liên hệ</span>
		</a></li>
				<li class="nav-item"><a class="nav-link collapsed"
			href="<c:url value = "/logout" />"> <i
				class="bi bi-box-arrow-in-right"></i> <span>Đăng xuất</span>
		</a></li>
		<!-- End Dashboard Nav -->

		
	</ul>
</aside>
<!-- End Sidebar-->