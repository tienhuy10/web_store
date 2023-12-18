<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<table
	class=" table datatable table-striped table-bordered table-info  ">
	<thead>
		<!-- file bill -->
		<tr>
			<th class="col-1 text-center">Mã</th>
			<th class="col-1 text-center">Sản phẩm</th>
			<th class="col-1 text-center">Số lượng</th>
			<th class="col-1 text-center">Giá</th>
			<th class="col-1 text-center">Thời gian</th>

		</tr>
	</thead>
	<tbody>
		<c:forEach items="${bill}" var="p">
			<tr>
				<td class="text-center" scope="row">${p.productId}</td>
				<td class="text-center">${p.productName}</td>
				<td class="text-center">${p.orderQuantity}</td>
				<td class="text-center"><fmt:formatNumber
						value="${p.productPrice}" type="currency" currencyCode="VND"
						maxFractionDigits="0" /></td>
				<td class="text-center" scope="row">${p.orderDate}</td>

			</tr>
		</c:forEach>
	</tbody>
</table>



