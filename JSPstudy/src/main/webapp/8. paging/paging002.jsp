<%@page import="com.company.paging.Paging_util"%>
<%@page import="com.company.paging.Paging_dto"%>
<%@page import="com.company.paging.Paging_dao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>페이징</title>
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
		<h3 class="panel-heading">3. 페이징 실제 구현</h3>

		<table class="table table-striped">
			<caption>pagingitem</caption>
			<thead>
				<tr>
					<th>ino</th>
					<th>name</th>
					<th>price</th>
					<th>description</th>
				</tr>
			</thead>
			<tbody>
				<c:set var="paging" value="${paging}" />
				<c:forEach var="dto" varStatus="status" items="${paging.list10}">
					<tr class="list-table">
						<td>${paging.listTotal - paging.pstartno - status.index}</td>
						<td>${dto.name}</td>

						<td>${dto.price}</td>
						<td>${dto.description}</td>
					</tr>
				</c:forEach>

			</tbody>
			<tfoot>
				<tr>
					<td colspan="5" class="text-center">
						<ul class="pagination">
						
							<!-- 이전 -->
							<c:if test="${paging.bottomnavi <= paging.startBtn }">
							<li>
							<a href="${pageContext.request.contextPath}/PagingServlet?pstartno=${(paging.startBtn-2)*paging.onepagelimit}" title="">이전</a>
							</li>
							</c:if>
						
							<!-- 페이지 번호 10개 -->
							<c:forEach var="i" begin="${paging.startBtn}" end="${paging.endBtn}">
							<li <c:if test="${i == paging.currentBtn }">class="active"</c:if>>
							<a href="${pageContext.request.contextPath}/PagingServlet?pstartno=${(i-1)*paging.onepagelimit}" title=""> ${i} </a>
							</li>
							</c:forEach>

							<!-- 다음 -->
							<c:if test="${paging.pageAll > paging.endBtn }">
								<li>
								<a href="${pageContext.request.contextPath}/PagingServlet?pstartno=${paging.endBtn*paging.onepagelimit}" title="">다음</a>
								</li>
							</c:if>
							
						</ul>
					</td>
				</tr>
			</tfoot>
		</table>


	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>