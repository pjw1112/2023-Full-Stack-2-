<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>COOKIE_extra</title>
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
		<h3 class="panel-heading">COOKIE를 이용한 LANGUAGE 설정화면 정보유지 (view) - TEST001</h3>
		<p>korea : cookie를 이용한 language 설정화면 정보유지</p>
		<%
		// 1. 쿠키가 설정되어 있는지 확인
		String cookie = request.getHeader("Cookie");
		
		request.setCharacterEncoding("UTF-8");
		
		String radio[] = request.getParameterValues("radioGroup");
		for(String item : radio){
			out.print(item);
		}
		
		if (radio != null) {
			
			// 1. 쿠키객체 선언 및 이름값 저장
			Cookie cookie1 = new Cookie("language", "dd");

			// 2. 쿠키 유효기간 설정
			cookie1.setMaxAge(60); //60초  => 1분

			// 3. response에 탑재 설정
			response.addCookie(cookie1);

		}
		%>
		
	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>