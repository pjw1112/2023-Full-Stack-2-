<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ERROR 404</title>
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
		<h3 class="panel-heading">ERROR 404 요청하신 페이지가 없습니다.</h3>
		<p class="panel-body"><img alt="error페이지" src="<%=request.getContextPath()%>/images/error.png"></p>
		<p><a href="<%=request.getContextPath()%>/"> HOME 으로 가기 </a> </p>
		
		<pre>

		</pre>
		<%

		%>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>