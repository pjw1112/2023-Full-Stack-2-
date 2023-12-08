<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<% response.setStatus(200); %>

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
		<h3 class="panel-heading">에러500 서버 내부 오류 관리자에게 문의 바랍니다</h3>
		<p class="panel-body"><img alt="error페이지" src="<%=request.getContextPath()%>/images/error.png"></p>
		
		<%=exception.getMessage()%>
		
		<script>
		
		setTimeout(function(){
			
			location.href='/';
			
		},2000);
		
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>