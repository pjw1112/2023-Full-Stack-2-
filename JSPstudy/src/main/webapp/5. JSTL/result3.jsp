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
<c:choose>
	<c:when test="${param.color ==1}">
		<c:set var="btn" value="btn-danger" />
		<c:set var="color" value="red" />
		<c:set var="al" value="../images/막걸리.png" />
	</c:when>
	<c:when test="${param.color ==2}">
		<c:set var="btn" value="btn-success" />
		<c:set var="color" value="green" />
		<c:set var="al" value="../images/맥주.png" />
	</c:when>
	<c:when test="${param.color ==3}">
		<c:set var="btn" value="btn-primary" />
		<c:set var="color" value="yellow" />
		<c:set var="al" value="../images/칵테일.png" />
	</c:when>
	<c:otherwise></c:otherwise>
</c:choose>
<style type="text/css">
.test {
	width: 230px;
	height: 370px;
	border-radius: 50px;
	border: 10px solid${color};
	background-image: url(${al});
}
</style>
</head>
<body>
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">지누 비어</h3>
		<p class="panel-body">술 막드러감</p>
		<table class="table table-striped">
			<caption>술을 마셔 술을 마셔 술술술~</caption>
			<thead>
				<tr>
					<td>count</td>
					<td>name</td>
					<td>img</td>
				</tr>
			</thead>
			<tbody>
		
		<c:forEach var="i" varStatus="status" items="${paramValues.al}">
			<tr>
			<td>${status.count}</td>
			<td>${i}</td>
			<td><img alt="${i}" src="../images/${status.count}.png"></td>
			</tr>
		</c:forEach>
		
		</tbody>
		</table>
		<a href="javascript:history.go(-1)" class="btn ${btn}">뒤로</a>
		</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>