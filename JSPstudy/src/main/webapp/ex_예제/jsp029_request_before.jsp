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
		int age = Integer.parseInt(request.getParameter("age"));
		// 1. 사용자일때는 사용자 페이지로
		
		if(age>19){
			// 방법 1. location.href - 주소표시창줄 노출 (request/response 유지 안됨)
			//out.print("<script>location.href='jsp029_3.jsp?email="+email+";</script>");
			// 방법 2. meta http-equiv='refresh'
			//out.print("<meta http-equiv='refresh' content='2;url=jsp029_3.jsp?email="+email+"'>");
			
			// 방법 3. response.sendRedirect
			response.sendRedirect("jsp026_request.jsp?name="+name+"");
			out.print("관리자 아님");
			
			
			
		}else{
		
			out.print("관리자 마즘");
		// 2. 관리자일때는 관리자 페이지로 - 관리자 페이지 주소에 안보임.
			// 방법 4. dispatcher
			request.getRequestDispatcher("jsp029_3.jsp").forward(request, response);
		}
		%>

		<table class="table table-striped">
			<caption>user page</caption>
			<tbody>
				<tr>
					<th scope="row">email : </th>
					<td></td>
				</tr>
				
			</tbody>
		

		</table>
		<p><a href="javascript:history.go(-1)" title="처음으로">BACK</a></p>
	</div>
	<!-- div container -->
	<!-- div container -->












</body>
</html>