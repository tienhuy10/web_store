<%@page import="Model.Account"%>
<%@page import="DataConnect.DBConnection"%>
<%@page import="dataAccessObject.*"%>
<%@page import="java.util.*"%>
<%@page import="Model.Item"%>
<%@page import="Model.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.text.DecimalFormat"%>
<%@ page import="Model.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page import="java.text.DecimalFormat"%>
<%@ page import="java.util.Locale"%>


<%
Account auth = (Account) request.getSession().getAttribute("acc");
List<Order> orders = null;
if (auth != null) {
	request.setAttribute("person", auth);
	OrderDao orderDao = new OrderDao(DBConnection.getConnection());
	orders = orderDao.userOrders(auth.getID());
} else {
	response.sendRedirect("login");
}
ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
if (cart_list != null) {
	DAO pDao = new DAO();
	pDao.setConnection(DBConnection.getConnection()); // Thiết lập Connection ở đây

	double total = pDao.getTotalCartPrice(cart_list);
	request.setAttribute("total", total);

	request.setAttribute("cart_list", cart_list);
}
%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
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
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.min.css"
	rel="stylesheet" />
<style>
html, body, .intro {
	height: 100%;
}

table td, table th {
	text-overflow: ellipsis;
	white-space: nowrap;
	overflow: hidden;
}

.card {
	border-radius: .5rem;
}

.mask-custom {
	background: rgba(24, 24, 16, .2);
	border-radius: 2em;
	backdrop-filter: blur(25px);
	border: 2px solid rgba(255, 255, 255, 0.05);
	background-clip: padding-box;
	box-shadow: 10px 10px 10px rgba(46, 54, 68, 0.03);
}
</style>
</head>

<body>
	<%@ include file="/views/Head.jsp"%>

	<section class="intro">
		<div class="bg-image h-100"
			style="background-color: rgb(255, 255, 255);">
			<div class="mask d-flex align-items-center h-100">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-12">
							<h2>Thông tin đơn hàng</h2>
							<div class="card shadow-2-strong"
								style="background-color: rgb(59, 113, 202);">
								<div class="card-body">

									<div class="table-responsive mb-4">
										<table class="table table-borderless mb-0">
											<thead>
												<tr>
													<th scope="col">Ngày đặt hàng</th>
													<th scope="col">Sản phẩm</th>
													<th scope="col">Số lượng</th>
													<th scope="col">Giá</th>
<!-- 													<th scope="col">Xóa</th> -->
												</tr>
											</thead>
											<tbody>
												<%
												double totalPrice = 0.0; // Khởi tạo biến tổng
												Locale vietnamLocale = new Locale("vi", "VN");
												DecimalFormat dcf = (DecimalFormat) DecimalFormat.getCurrencyInstance(vietnamLocale);

												if (orders != null) {
													for (Order o : orders) {
														// Cộng dồn giá trị getPrice() vào tổng
														totalPrice += o.getPrice();
												%>
												<tr>
													<td><%=o.getDate()%></td>
													<td><%=o.getTitle()%></td>
													<td><%=o.getQuantity()%></td>
													<td><%=dcf.format(o.getPrice())%></td>
<%-- 													<td><a href="cancel-order?id=<%=o.getOrderId()%>" --%>
<!-- 														class="btn btn-danger btn-sm px-3"> <i -->
<!-- 															class="fas fa-times"></i> -->
<!-- 													</a></td> -->
												</tr>
												<%
												}
												}
												%>

											</tbody>
										</table>
									</div>
									<div class="row justify-content-between">
										<div class="col-auto">
											<h4 style="color: rgb(255, 255, 255)">
												Tổng tiền:
												<%=dcf.format(totalPrice)%></h4>
										</div>
<!-- 										<div class="col-auto"> -->

<!-- 											<a href="Home" class="btn btn-success btn-sm">Thoát</a> -->
<!-- 										</div> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Hiển thị tổng ở đâu đó trong trang -->

	<%@ include file="/views/Footer.jsp"%>

	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/7.1.0/mdb.umd.min.js"></script>
</body>

</html>