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
1. 처리컨테이너 : Servlet_Search
2. 처리 방식 : get - 주소표시창에 노출
3. 보관용기 : query

localhost:8080/Servlet_Search?query=검색데이터
		</pre>
		<%

		%>
		
		<form action="Servlet_Search" id="form" method="post">
		<fieldset>
			<legend>Search</legend>
			<div class="form-group">
				<label for="id">검색 : </label> 
				<input type="text" id="search" name="query" class="form-control"/>
			</div>
			
			<div class="form-group">
				<input type="submit" value="get방식으로 검색하기" id="submit" class="btn btn-danger ">
			</div>
		
		</fieldset>
	</form>
	
	</div>
	<!-- div container -->
	<!-- div container -->


<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">리다이렉트 결과값</h3>
		<p class="panel-body"></p>
		<%
		request.setCharacterEncoding("UTF-8");
		String aa = request.getParameter("query");
		
		%>
		<%=aa %>
	</div>
	<!-- div container -->
	<!-- div container -->
</body>
</html>