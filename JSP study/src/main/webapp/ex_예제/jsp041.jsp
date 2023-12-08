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
		<h3 class="panel-heading">1. 제목</h3>
		<p class="panel-body">소제목</p>
		<pre>
1. url vs uri
2. URL : Uniform Resource Locator (위치)
	- 자원의 위치로 접근 (ex : https://www.naver.com/logo.png)
3. URI : Uniform Resource Identifier (식별자)
	- 자원의 식별자로 접근 (ex : https://www.naver.com/logo)
		</pre>
		<p><a href="SERVLET1"> SERVELT1</a></p>
		<%

		%>
		
		
	</div>
	<!-- div container -->
	<!-- div container -->
	
	
	
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">2. GET / POST</h3>
		<p class="panel-body">소제목</p>
		<pre>
[HOME PAGE] (request) -> 1. controller (servlet) : 무엇을 요청했는지 파악, 
							해당작업을 해줄 수 있는 컴포넌트에게 넘기기 (model)
						 2. model : 해당하는 작업을 가공해서 controller 에게 주기

			(response) <- 3. view (jsp)
			
			1) 사용자 요청 (a, form, java)
			2) doGet, doPost
			3) SERVLET 인스턴스와 스레드 생성
			  - url 요청이 한번도 없었다면 인스턴스 생성 - 스레드 하나 생성
			  - init()
			4) service() 메서드 호출
			  - doGet, doPost
			  
			5) 응답하고 스레드 소멸    
			
		</pre>
		
		
		
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>