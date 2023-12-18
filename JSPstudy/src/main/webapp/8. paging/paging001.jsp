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
		<h3 class="panel-heading">1. 페이징 ?</h3>
		<p class="panel-body">이론</p>
		<pre>
MODEL : table /dto / dao
- pagingitem

VIEW
-

CONTROLLER
-

		</pre>
		<%
		Paging_dao dao = new Paging_dao();
		Paging_dto dto = new Paging_dto();

		out.print("테이블 총 개수 : " + dao.totalcnt() + "<br>");
		out.print("0번부터 자료 10개 :<br> " + dao.list10(10));

		for (Paging_dto item : dao.list10(10)) {

			out.print("Ino : " + item.getIno() + ", name : " + item.getName() + ", price : " + item.getPrice()
			+ ", description : " + item.getDescription());
			out.print("<br>");

		}
		%>






	</div>
	<!-- div container -->
	<!-- div container -->






	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">2. 페이징 테스트</h3>


		<%
		Paging_util paging = new Paging_util(0);

		out.print(paging + "<hr>");

		paging = new Paging_util(10);

		out.print(paging + "<hr>");
		%>


	</div>
	<!-- div container -->
	<!-- div container -->






	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">3. 페이징 실제 구현</h3>



		<script type="text/javascript">
			location.href = '${pageContext.request.contextPath}/PagingServlet';
		</script>

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
						<td>${paging.listTotal - paging.pstartno - status.inex}</td>
						<td>${dto.name}</td>

						<td>${dto.price}</td>
						<td>${dto.description}</td>
					</tr>
				</c:forEach>

			</tbody>

		</table>


	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>