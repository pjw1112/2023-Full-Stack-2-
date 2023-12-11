<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp046_result.jsp</title>
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
		<h3 class="panel-heading">검색어</h3>
		<% request.setCharacterEncoding("UTF-8");
		   String search = request.getParameter("search");	
		%>

		<p>아이디 : ${param.id} </p> 
		<p>비밀번호 : ${param.pass} </p> 
		
		<a href="javascript:history.go(-1)">back</a>
	</div>
	<!-- div container -->
	<!-- div container -->
	
	

</body>
</html>