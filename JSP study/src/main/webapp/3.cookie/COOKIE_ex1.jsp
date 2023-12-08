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
		<h3 class="panel-heading">COOKIE_ex1</h3>
		<p>쿠키 ex1</p>
		<%
		// 1. 쿠키객체 선언 및 이름값 저장
		Cookie cookie1 = new Cookie("choco", "2000");
		Cookie cookie2 = new Cookie("white", "1500");

		// 2. 쿠키 유효기간 설정
		cookie1.setMaxAge(60);
		cookie2.setMaxAge(5);

		// 3. response에 탑재 설정
		response.addCookie(cookie1);
		response.addCookie(cookie2);
		%>
		<div class="panel-body">
			<a href="COOKIE_ex2.jsp" class="btn btn-danger">초코가격확인</a>
		</div>

	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>