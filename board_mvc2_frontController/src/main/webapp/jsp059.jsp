<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC2 Front Controller</title>
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
		<h3 class="panel-heading">1. MVC Pattern</h3>
		<pre>
0. mvc ( model - view - controller)
 - business login 과 presentation logic 을 분리하기 위함
 - model : ㅇㅓ플리케이션의 정보 (데이터, business login 포함)
 - view : 사용자에게 제공할 화면 (presentaion)
 - controller - model과 view 사이의 상호작용 관리
 
1. mvc1 vs mvc2 차이점
 mvc1 - jsp가 controller 역할 다 함
 mvc2 - 서블릿이 controller 역할 함
 
2. frontcontroller 
[before::]
클라이언트
 [homepage]  >  request  >  1. [servlet-controller]
 							2. model
 				response <	3. view

[after::]	
클라이언트
 [homepage]  >  [frontcontroller]   >  [controller] > [뷰]
 									>  [controller] > [뷰]
 									>  [controller] > [뷰] 							

프론트 컨트롤러 설계의 장점
 1) 클라이언트가 보낸 요청중 공통적인 작업을 먼저 수행
 2) 인증, 권한 체크
 				
3. model component
 - 저장소와 연동해서 사용자가 입력한 데이터를 처리함
 - 트랜잭션 (상세보기페이지 - update + select) 여러개의 데이터 변경작업을 하나의 작업으로 처리
4. view component
	jsp = html + java
 	
 		</pre>

	</div>
	<!-- div container -->
	<!-- div container -->




	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">2. MVC Pattern 실습</h3>
		<pre>
1. a.test
2. b.test	
	
	</pre>
		<p>
			<a href="${pageContext.request.contextPath}/a.test" class="btn btn-danger">BASIC-A</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/b.test" class="btn btn-danger">BASIC-B</a>
		</p>



	</div>
	<!-- div container -->
	<!-- div container -->



	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">실습 예제</h3>


		<p>
			<a href="${pageContext.request.contextPath}/a.jinwoo" class="btn btn-danger">BASIC-A</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/b.jinwoo" class="btn btn-danger">BASIC-B</a>
		</p>



	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">실습 예제- 배포용</h3>
<pre>
개발할때는 서블릿 어노테이션 버전으로 가고
완성후 배포할때는 web.xml 로 통합
</pre>

		<p>
			<a href="${pageContext.request.contextPath}/a.jinwoo2" class="btn btn-danger">BASIC-A2</a>
		</p>
		<p>
			<a href="${pageContext.request.contextPath}/b.jinwoo2" class="btn btn-danger">BASIC-B2</a>
		</p>



	</div>
	<!-- div container -->
	<!-- div container -->
	
	
	
	
	
	
</body>
</html>