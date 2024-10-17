<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="mma"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventory</title>
<style type="text/css">
</style>
</head>
<body>
	<div>
		<p>
			Current Date and Time:
			<fmt:formatDate pattern="MMMM dd, y, hh:mm a" value="${current}" />
		</p>
	</div>
	<table>
		<thead>
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Quantity</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="product" items="${products}">
				<tr>
					<td>${product.productId}</td>
					<td>${product.productName}</td>
					<td>${product.quantity}</td>
					<td>${product.price}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div>
		<p>
			<mma:copyrightTag />
		</p>
	</div>
</body>
</html>