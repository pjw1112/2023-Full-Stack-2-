<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 제목</title>
<!-- Bootstrap and Jquery -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Bootstrap and Jquery -->
</head>
<body>
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">result 페이지</h3>
		<table class="table table-striped ">
			<caption>IMG BOARD</caption>
			<thead>
				<tr class="list-table">
					<th scope="col">NO</th>
					<th scope="col">NAME</th>
					<th scope="col">PRICE</th>
					<th scope="col">DESCRIPTION</th>
					<th scope="col">IMG</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="total" value="${list.size()}"/>
				<c:forEach var="dto" varStatus="status" items="${list}">
					<tr class="list-table">
						<td>${total-status.index}</td>
						<td>${dto.name}</td>
						<td>${dto.price}</td>
						<td>${dto.description}</td>
						<td><img src="${pageContext.request.contextPath}/upload/${dto.img}"/></td>
					</tr>
				</c:forEach>
				
<%
System.out.println("result 페이지 에서 img 태그 안에 적히는 경로 ${pageContext.request.contextPath}/upload/${dto.img}의 값 : ");
System.out.println( request.getContextPath()+"/upload/${dto.img}");
%>
			</tbody>
		</table>
		
				<div>
			<a href="${pageContext.request.contextPath}/insert_view.upload" class="btn btn-danger">글쓰기</a>
		</div>
		<p>${pageContext.request.contextPath}</p>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>