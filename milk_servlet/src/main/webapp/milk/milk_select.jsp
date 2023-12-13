<%@page  language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*"  %>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/inc/header.jsp" %>
	<div class="container panel panel-warning">
		<h3 class="panel-heading">MILK - CRUD( select )</h3>
		<table class="table table-striped">
			<thead>
			<tr> <th scope="col">번호</th> <th scope="col">이름</th> <th scope="col">가격</th> </tr>
			</thead>
			<tbody>
  				<c:forEach var="dto" varStatus="status" items="${list}">
			<tr>
			<td>${dto.mno}</td>
			<td>${dto.mname}</td>
			<td>${dto.mprice}</td>
			</tr>
		</c:forEach>
			</tbody>
		</table>
 
		<p><a href="${pageContext.request.contextPath}/list.milk" class="btn btn-danger" >돌아가기</a></p>
 
	</div>

<%@include file="/inc/footer.jsp" %>

