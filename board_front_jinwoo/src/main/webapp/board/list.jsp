<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../inc/header.jsp"%>

<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->
<style>
.list-table {
	display: grid;
	grid-template-columns: 1fr 2fr 10fr 3fr 1fr;
}
</style>
<div class="container" style="margin-top: 5%; min-height: 500px">
	<h3>MULTIBOARD</h3>
	<table class="table table-striped ">
		<caption>MULTIBOARD - frontController</caption>
		<thead>
			<tr class="list-table">
				<th scope="col">NO</th>
				<th scope="col">WRITER</th>
				<th scope="col">TITLE</th>
				<th scope="col">DATE</th>
				<th scope="col">HIT</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="total" value="${list.size()}" />
			<c:forEach var="dto" varStatus="status" items="${list}">
				<tr class="list-table">
					<td>${dto.bno}</td>
					<td>${dto.bname}</td>
					<td><a href='detail.do?bno=${dto.bno}'>${dto.title}</a></td>
					<td>${dto.bdate}</td>
					<td>${dto.bhit}</td>
				</tr>
			</c:forEach>

		</tbody>
	</table>
	<div class="board_bottom">
		<div></div>
		<div class="center">
		<p class="number_list">1 | 2 | 3</p>
		</div>
		<div>
			<a href="write_view.do" class="btn btn-danger">글쓰기</a>
		</div>
	</div>
</div>

<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<%@ include file="../inc/footer.jsp"%>