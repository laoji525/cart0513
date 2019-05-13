<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<table align='center' border='1' cellspacing='0'>
	<tr>
		<td>name</td>
		<td>number</td>
		<td>total</td>
	</tr>
	<c:forEach items="${ois}" var="oi" varStatus="st">
		<tr>
			<td>${oi.product.name}</td>
			<td>${oi.num}</td>
			<td>${oi.product.price*oi.num}</td>
			<td>
		</tr>
	</c:forEach>
</table>