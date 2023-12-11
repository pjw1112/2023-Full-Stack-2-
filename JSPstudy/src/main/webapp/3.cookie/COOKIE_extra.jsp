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
		
		if (cookie != null) {
			Cookie[] cookies = request.getCookies();
			for (int i = 0; i < cookies.length; i++) {
				out.print("<p>NAME : " + cookies[i].getName() + "</p>");

			}

		}
		%>
		<div class="panel-body">

			<form action="COOKIE_extra_save.jsp" >
				<label> 
				<input type="radio" name="radioGroup" value="korea"> korea
				</label> 
				<label> 
				<input type="radio" name="radioGroup" value="english"> english
				</label>
				<input type="submit" value="설정"> 
			</form>
		</div>

	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>