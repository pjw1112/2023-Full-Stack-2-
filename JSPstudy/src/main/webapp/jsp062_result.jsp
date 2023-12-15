<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<h3 class="panel-heading"> 파일 업로드 결과</h3>
		<p class="panel-body">${title}</p>
		<p>${pageContext.request.contextPath}</p>
		<p>${file}</p>
		<p><img src="/upload/${file}"></p>
		<p><img src="upload/${file}"></p>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>