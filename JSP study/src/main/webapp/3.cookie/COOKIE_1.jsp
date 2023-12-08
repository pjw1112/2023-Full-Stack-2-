<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>COOKIE_1</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">COOKIE</h3>
		<p>클라이언트측에 저장되는 정보</p>
		<%
		// 1. 쿠키가 설정되어 있는지 확인
		String cookie = request.getHeader("Cookie");
		out.print(cookie);
		
		if(cookie != null){
			Cookie[] cookies = request.getCookies();
			for(int i=0; i<cookies.length; i++){
				out.print("<p>NAME : "+cookies[i].getName()+"</p>");
				out.print("<p>VALUE : "+cookies[i].getValue()+"</p>");
				
			}
			
		}
		
		%>
		<div class="panel-body">
			<a href="COOKIE_2.jsp" class="btn btn-danger">쿠키 저장</a> 
			<a href="COOKIE_3.jsp" class="btn btn-danger">쿠키 삭제</a>
		</div>

	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>