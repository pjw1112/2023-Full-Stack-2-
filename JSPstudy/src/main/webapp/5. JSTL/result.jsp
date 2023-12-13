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
<c:if test="${param.color ==1}">
	<c:set var="btn" value="btn-danger" />
	<c:set var="color" value="red" />
</c:if>
<c:if test="${param.color ==2}">
	<c:set var="btn" value="btn-success" />
	<c:set var="color" value="green" />
</c:if>
<c:if test="${param.color ==3}">
	<c:set var="btn" value="btn-primary" />
	<c:set var="color" value="blue" />
</c:if>
<style type="text/css">
.test {
	width: 600px;
	height: 200px;
	background-color: ${color};
}
</style>
</head>
<body>
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">1. 제목</h3>
		<p class="panel-body">소제목</p>

		<c:set var="color" value="${param.color}" />
		<div class="test">TEST</div>
		<p><a href="javascript:history.go(-1)" class="btn"></a>
		</p>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>