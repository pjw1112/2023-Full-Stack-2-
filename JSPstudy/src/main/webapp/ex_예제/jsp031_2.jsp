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
		<h3 class="panel-heading">1. 내장 객체의 유효 범위</h3>
		<pre>
		영역				영역객체			속성유효범위
		-------------------------------------------------------
		page    		pageContext  	해당페이지에서만
		-------------------------------------------------------
		request 		request 		클라이언트의 요청이 처리되는 동안
		-------------------------------------------------------
		session 		session 		브라우저가 종료되기 전 까지
		-------------------------------------------------------
		application 	application 	웹어플리케이션이 실행되고 있는동안
		-------------------------------------------------------
		
		범위 작은 거		    <<<< 			범위 큰 거
		page < request < session < application 
		
		</pre>

	</div>
	<!-- div container -->
	<!-- div container -->



	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">2. 내장객체의 셋팅 / 확인</h3>
		<pre>
		
		</pre>
	
	<table class="table table-striped">
	<caption>SCOPE</caption>
	<tbody>
	<tr><th scope="row">PAGE</th>
		<td><%=pageContext.getAttribute("name") %></td></tr>
	<tr>
		<tr><th scope="row">REQUEST</th>
		<td><%=request.getAttribute("name") %></td></tr>
	<tr>
		<tr><th scope="row">SESSION</th>
		<td><%=session.getAttribute("name") %></td></tr>
	<tr>
		<tr><th scope="row">APPLICATION</th>
		<td><%=application.getAttribute("name") %></td></tr>
	<tr>
	
	</tbody>
	
	</table>
	<p><a href="jsp031_2.jsp" class="btn btn-danger">페이지 속성확인</a></p>
	
	
	
	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>