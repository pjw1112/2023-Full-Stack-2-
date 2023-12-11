<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCOPEandSESSION_3</title>
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
		<h3 class="panel-heading">SCOPEandSESSION_3 페이지</h3>
		<%
		request.setCharacterEncoding("UTF-8");
		String email = request.getParameter("email");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		session.setAttribute("email", email);  //application
		session.setAttribute("address", address);
		session.setAttribute("tel", tel);
		out.print("<p>"+application.getAttribute("name")+"님! 정보가 모두 저장되었습니다. </p>");
	
		%>
		<p>
		<a href="SCOPEandSESSION_4.jsp" title="scope 확인하러 바로가기 링크" class="btn btn-danger" >확인하러 가기</a>
		
		</p>
		
	
	
	
	
	</div>
	<!-- div container -->
	<!-- div container -->


</body>
</html>