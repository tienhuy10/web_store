<%@page import="Model.Account"%>
<%@page import="DataConnect.DBConnection"%>
<%@page import="dataAccessObject.DAO"%>
<%@page import="java.util.*"%>
<%@page import="Model.Item"%>
<%@page import="Model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page import="Model.Cart"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);

Account acc = (Account) request.getSession().getAttribute("acc");
if (acc != null) {
	request.setAttribute("person", acc);
}

ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
List<Cart> cartProduct = null;
if (cart_list != null) {
	DAO pDao = new DAO();
	pDao.setConnection(DBConnection.getConnection()); // Thiết lập Connection ở đây
	cartProduct = pDao.getCartProducts(cart_list);
	double total = pDao.getTotalCartPrice(cart_list);
	request.setAttribute("total", total);
	request.setAttribute("cart_list", cart_list);
}
%>



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
							<h4 class="card-title mb-4">Giỏ hàng</h4>
							<%
							if (cart_list != null) {
								for (Cart c : cartProduct) {
							%>

							<div class="row gy-3 mb-4">
								<%-- 								<div class="col-lg-5">
									<div class="me-lg-5">
										<div class="d-flex">
											<img src="<%=c.getImages()%>" class="border rounded me-3"
												style="width: 96px; height: 96px;" />
											<div class="">
												<p class="nav-link"><%=c.getTitle()%></p>

											</div>
										</div>
									</div>
								</div> --%>

								<div class="col-lg-2 col-sm-6 col-6 d-flex ">
									<img src="images/<%=c.getImages()%>"
										class="border rounded me-3" style="width: 96px; height: 96px;" />
								</div>
								<div class="col-lg-2 col-sm-6 col-6 d-flex ">
									<div class="">
										<p class="nav-link"><%=c.getTitle()%></p>

									</div>
								</div>
								<div
									class="col-lg-2 col-sm-6 col-6 d-flex flex-row flex-lg-column flex-xl-row text-nowrap">
									<div class="">
										<text class="h6"> <%=new java.text.DecimalFormat("###,###,###").format(c.getPrice())%>
										VND</text>

									</div>
								</div>
								<div class="col-lg-4 col-sm-6 col-6 d-flex ">
									<form action="order-now" method="post" class="form-inline">
										<input type="hidden" name="id" value="<%=c.getID()%>"
											class="form-control" />
										<div class="form-group d-flex justify-content-between">
											<a href="quantity-inc-dec?action=dec&id=<%=c.getID()%>"
												class="btn btn-sm btn-incre btn-primary"><i
												class="fas fa-minus-square"></i></a> <input type="text"
												name="quantity" value="<%=c.getQuantity()%>"
												<%=c.getQuantity()%> class="form-control mx-1" /><a
												href="quantity-inc-dec?action=inc&id=<%=c.getID()%>"
												class="btn btn-sm btn-incre btn-primary"><i
												class="fas fa-plus-square"></i></a>
<!-- 											<button type="submit" class="btn btn-primary btn-sm mx-2">Mua</button> -->
										</div>
									</form>
								</div>
								<div
									class="col-lg col-sm-6 d-flex justify-content-sm-center justify-content-md-start justify-content-lg-center justify-content-xl-end mb-2">
									<div class="float-md-end">
										<!-- 										<a href="order-now" -->
										<!-- 											class="btn btn-light border px-2 icon-hover-primary">Mua</a> -->
										<a href="remove-product-cart?id=<%=c.getID()%>"
											class="btn btn-light border text-danger icon-hover-danger">
											Xóa</a>
									</div>
								</div>
							</div>
							<%
							}
							}
							%>

						</div>

						<div class="border-top pt-4 mx-4 mb-4">
							<p>
								<i class="fas fa-truck text-muted fa-lg"></i> Giao hàng miễn phí
								trong vòng 1-2 tuần
							</p>
							<p class="text-muted"></p>
						</div>
					</div>
				</div>
				<!-- cart -->
				<!-- summary -->
				<div class="col-lg-3">
<!-- 					<div class="card mb-3 border shadow-0"> -->
<!-- 						<div class="card-body"> -->
<!-- 							<form> -->
<!-- 								<div class="form-group"> -->
<!-- 									<label class="form-label">Have coupon?</label> -->
<!-- 									<div class="input-group"> -->
<!-- 										<input type="text" class="form-control border" name="" -->
<!-- 											placeholder="Coupon code" /> -->
<!-- 										<button class="btn btn-light border">Apply</button> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</form> -->
<!-- 						</div> -->
<!-- 					</div> -->
					<div class="card shadow-0 border">
						<div class="card-body">
							<div class="d-flex justify-content-between">
								<p class="mb-2">Tổng tiền:</p>
								<p class="mb-2">
									<fmt:formatNumber value="${total>0?total:0}" type="currency"
										currencyCode="VND" maxFractionDigits="0" />
								</p>
							</div>
							

							<div class="mt-3">
								<a href="check-out" class="btn btn-success w-100 shadow-0 mb-2">
									Đặt hàng </a> <a href="Products"
									class="btn btn-light w-100 border mt-2"> Tiếp tục mua sắm </a>
							</div>
						</div>
					</div>
				</div>
				<!-- summary -->
			</div>
		</div>
	</section>

	<%@ include file="/views/Footer.jsp"%>
</body>
</html>