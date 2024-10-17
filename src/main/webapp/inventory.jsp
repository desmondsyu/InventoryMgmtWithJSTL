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
body {
	margin: 0;
	padding: 0;
	font-family: "Gill Sans", sans-serif;
}

main {
	width: 80%;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
}

.datetime {
	font-weight: bold;
	font-size: 1.875em;
	color: #0a40bf;
}

table {
	width: auto;
	border-collapse: collapse;
	margin-bottom: 20px;
}

th, td {
	border: 1px solid #ddd;
	padding: 10px;
	text-align: left;
}

th {
	background-color: #3babd4;
	color: white;
}

footer {
	text-align: left;
	background-color: #000;
	color: white;
	position: fixed;
	width: 100%;
	bottom: 0;
}

footer p {
	padding: 0 20px;
}
</style>
</head>
<body>
	<main>
		<div class="datetime">
			<p>
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
	</main>
	<footer>
		<mma:copyrightTag />
	</footer>
</body>
</html>