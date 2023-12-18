<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCOPEandSESSION_1</title>
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
		<h3 class="panel-heading">SESSION</h3>
		<p class="panel-body">서버측에 저장되는 정보</p>
		<p class="panel-body well">
			<%
			// 세션값 확인
			out.print("세션 아이디 : " + session.getId() );
			
			String name = (String) session.getAttribute("name");
			String age = (String) session.getAttribute("age");
			if (name != null) {
				out.print("<p>NAME : " + name + "</p>");
			} else {
				out.print("<p>세션값 없음</p>");
			}

			if (age != null) {
				out.print("<p>AGE : " + age + "</p>");
			} else {
				out.print("<p>세션값 없음</p>");
			}
			%>
		</p>
		<div class="panel-body">
			<a href="jsp034session2.jsp" class="btn btn-danger">세션값 저장</a> 
			<a href="jsp034session3.jsp" class="btn btn-danger">세션값 삭제</a> 
			<a href="jsp034session4.jsp" class="btn btn-danger">세션값 초기화</a>
		</div>
	</div>
	<!-- div container -->
	<!-- div container -->
</body>
</html>