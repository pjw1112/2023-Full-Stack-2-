<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCOPEandSESSION_1</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style type="text/css">
.asdf{
font-size: 80px;
}

</style>
</head>
<body>

		
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">500 에러 페이지 입니다</h3>
		<p><img src="images/error.png"></p>
		<p> 서버 내부 오류 입니다. 관리자에게 문의해주세요</p>
		<p><span class="asdf">505에러</span></p>
		
		
	</div>
	<%=exception.getMessage()%>
	<!-- div container -->
	<!-- div container -->



</body>
</html>