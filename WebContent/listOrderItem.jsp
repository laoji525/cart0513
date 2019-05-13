<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" isELIgnored="false"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<h1 align="center" >cart</h1>
<table align='center' border='1' cellspacing='0'>
    <tr>
        <td>name</td>
        <td>price</td>
        <td>number</td>
        <td>total</td>
    </tr>
 
    <c:forEach items="${ois}" var="oi" varStatus="st">
        <tr>
            <td>${oi.product.name}</td>
            <td>${oi.product.price}</td>
            <td>${oi.num}</td>
            <td>${oi.product.price*oi.num}</td>
        </tr>
    </c:forEach>
     
    <c:if test="${!empty ois}">
        <tr>
            <td colspan="4" align="right">
                <a href="createOrder">createorder</a>
            </td>
        </tr>
    </c:if>
     
</table>