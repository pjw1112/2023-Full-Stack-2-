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
		String[] animals = request.getParameterValues("animal");
		%>

		<table class="table table-striped">
			<caption>정보 확인</caption>
			<tbody>
				<tr>
					<th scope="row">사용자 : </th>
					<td><%=name%></td>
				</tr>
				<tr>
					<th scope="row">반려동물 : </th>
					<td><%
					 for (String animal : animals) {
					        out.println("" + animal + ", ");
					    }
					
					%></td>
				</tr>

			</tbody>
		

		</table>



	</div>
	<!-- div container -->
	<!-- div container -->












</body>
</html>