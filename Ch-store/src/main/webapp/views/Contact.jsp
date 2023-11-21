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
					<div class="card mb-4 border shadow-0">
						<div class="p-4 d-flex justify-content-between">
							<div class="">
								<h5>Hãy Liên Hệ Với Chúng Tôi</h5>
								<p class="mb-0 text-wrap ">Vui lòng Đăng Nhập/Đăng Ký để
									liên hệ</p>
							</div>
							<div
								class="d-flex align-items-center justify-content-center flex-column flex-md-row">
								<a href="#"
									class="btn btn-outline-primary me-0 me-md-2 mb-2 mb-md-0 w-100">Đăng
									Ký</a> <a href="#"
									class="btn btn-primary shadow-0 text-nowrap w-100">Đăng
									Nhập</a>
							</div>
						</div>
					</div>


					<!-- Contact -->
					<form method="post" action="Contact">
						<div class="card shadow-0 border">
							<div class="p-4">
								<h5 class="card-title mb-3">Liên Hệ</h5>
								<div class="row">
									<div class="col-6 mb-3">
										<p class="mb-0">Họ Và Tên</p>
										<div class="form-outline">
											<input name="name" type="text" id="typeText" placeholder=""
												class="form-check h-100 border rounded-3" />
										</div>
									</div>

									<div class="col-6 mb-3">
										<p class="mb-0">Phone</p>
										<div class="form-outline">
											<input name="phone" type="tel" id="typePhone" value=" "
												class="form-check h-100 border rounded-3" />
										</div>
									</div>

									<div class="col-6 mb-3">
										<p class="mb-0">Địa Chỉ</p>
										<div class="form-outline">
											<input name="address" type="text" id="typeTextl"
												placeholder="" class="form-check h-100 border rounded-3" />
										</div>
									</div>

									<div class="col-6 mb-3">
										<p class="mb-0">Tiêu Đề</p>
										<div class="form-outline">
											<input name="title" type="text" id="typeTextl" placeholder=""
												class="form-check h-100 border rounded-3" />
										</div>
									</div>
								</div>

								<div class="mb-3">
									<p class="mb-0">Nội Dung</p>
									<div class="form-outline">
										<textarea class="form-control border rounded-3"
											name="contents" id="textAreaExample1" rows="2"></textarea>
									</div>
								</div>

								<div class="float-end">
									<button class="btn btn-light border">
										<a href="Home">Cancel</a>
									</button>
									<button class="btn btn-success shadow-0 border" type="submit">Gửi</button>
								</div>
							</div>
						</div>
					</form>
				</div>

				<div
					class="col-xl-4 col-lg-4 d-flex justify-content-center justify-content-lg-end">
					<div class="ms-lg-4 mt-4 mt-lg-0" style="max-width: 320px;">
						<div class="map">
							<iframe
								src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3780.1103480616835!2d105.69356111484493!3d18.659043587328544!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3139cc2ca3ccbf09%3A0xbd183e7e516c5dac!2zxJDhuqFpIEjhu41jIFZpbmg!5e0!3m2!1svi!2s!4v1640159611690!5m2!1svi!2s"
								style="border: 0;" tabindex="0" width="400" height="500"></iframe>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
<%@ include file="/views/Footer.jsp"%>
</html>