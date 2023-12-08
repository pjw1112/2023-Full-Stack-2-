<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP022</title>
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
		<h3 class="panel-heading">1) score 테이블 출력</h3>
		<pre>
		
1) 프로토콜 : https - 네트워크상의 약속한 통신 규약
2) ip    : 127.0.0.1 - 네트워크상 컴퓨터를 식별할 수 있는 주소
3) dns   : localhost - ip를 사람이 쉽게 알 수 있도록 맵핑한 주소
4) port  : 8080 - 해당컴퓨터에서 구동되는 프로그램 구분번호
		
		
		</pre>

		<%

		%>
	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">2) 내장객체 request</h3>
		<p>클라이언트 http 요청정보를 저장한 객체 (http헤더정보, 파라미터)</p>

		<%
			out.print("서버네임 : "+request.getServerName()+"<br>");
			out.print("서버포트 : "+request.getServerPort()+"<br>");
			out.print("메서드 : "+request.getMethod()+"<br>");
			out.print("프로토콜 : "+request.getProtocol()+"<br>");
			out.print("URI : "+request.getRequestURI()+"<br>");
			out.print("contextPath : "+request.getContextPath()+"<br>");
			out.print("path : "+request.getRequestURI().split("/")[2]+"<br>");
			out.print("URL : "+request.getRequestURL()+"<br>");
			out.print("pathinfo : "+request.getPathInfo()+"<br>");
				
		%>
	</div>
	<!-- div container -->
	<!-- div container -->













</body>
</html>