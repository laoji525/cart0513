<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:if test="${ !(empty user) }">
	<div align="center">current user: ${user.name}</div>

</c:if>
<table align='center' border='1' cellspacing='0'>
	<tr>
		<td>id</td>
		<td>name</td>
		<td>price</td>
		<td>buy</td>
	</tr>
	<c:forEach items="${product}" var="product" varStatus="st">
		<tr>
			<td>${product.id}</td>
			<td>${product.name}</td>
			<td>${product.price}</td>
			<td>"WebContent/listProduct.jsp"

				<form action="addOrderItem" method="post">

					number<input type="text" value="1" name="num"> <input
						type="hidden" name="pid" value="${product.id}"> <input
						type="submit" value="buy">
				</form>
			</td>

		</tr>
	</c:forEach>
</table>