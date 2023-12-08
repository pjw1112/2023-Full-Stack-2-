<%@page import="java.util.Arrays"%>
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
<style type="text/css">
input[type="checkbox"] {
	border-right: 10px solid red;
}
</style>
</head>
<body>

	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">request</h3>
		<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String alcohol = request.getParameter("alcohol");
		%>

		<table class="table table-striped">
			<caption>정보 확인</caption>
			<tbody>
				<tr>
					<th scope="row">이름 : </th>
					<td><%=name%></td>
				</tr>
				<tr>
					<th scope="row">술 : </th>
					<td><%=alcohol%></td>
				</tr>

			</tbody>
		

		</table>
		<img alt="" src="images/<%=alcohol%>.png">


	</div>
	<!-- div container -->
	<!-- div container -->












</body>
</html>