<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCOPEandSESSION_4</title>
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
		<h3 class="panel-heading">SCOPEandSESSION_4 LAST 페이지</h3>
		<p>속성이 유지되는 범위 확인</p>

<table class="table table-striped">
	<caption>application 영역에 저장된 내용들</caption>
	<tbody>
	<tr><td>이름</td><td><%=application.getAttribute("name") %></td></tr>
	<tr><td>아이디</td><td><%=application.getAttribute("id") %></td></tr>
	<tr><td>Session 영역에 저장된 내용들</td></tr>
	<tr><td>이메일</td><td><%=session.getAttribute("email") %></td></tr>
	<tr><td>주소</td><td><%=session.getAttribute("address") %></td></tr>
	<tr><td>전화번호</td><td><%=session.getAttribute("tel") %></td></tr>
	<tr><td>page 영역에 저장된 내용들</td></tr>
	<tr><td>page의 사용범위</td><td>
	<%
	pageContext.setAttribute("page", "현재 페이지에서만 사용");
	out.print(pageContext.getAttribute("page"));
	%>
	
	</td></tr>	
	
	</tbody>
	
	</table>
	
	
	
	
	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>