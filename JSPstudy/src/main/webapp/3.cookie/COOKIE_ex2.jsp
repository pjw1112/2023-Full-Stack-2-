<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>COOKIE_ex2</title>
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
		<h3 class="panel-heading">COOKIE_ex2</h3>
		<p>쿠키 확인</p>

		<table class="table table-striped">
			<caption>쿠키 테이블 확인</caption>
			<thead>
				<tr>
					<th scope="col">NAME</th>
					<th scope="col">VALUE</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>name</td>
					<td>value</td>
				</tr>
				<%
				String name="";
				String cookie="";
				String cookiee = request.getHeader("Cookie");
				out.print(cookiee);

				if (cookie != null) {
					Cookie[] cookies = request.getCookies();
					for (int i = 0; i < cookies.length; i++) {
						out.print("<tr><td>" + cookies[i].getName() + "</td>");
						out.print("<td>" + cookies[i].getValue() + "</td><tr>");

						if(cookies[i].getName().equals("choco")){
							name = cookies[i].getName();
							cookie = cookies[i].getValue();
						}
						
						
					}

				}
				%>



			</tbody>
			<%
			out.print("<h4>"+name+"</h4>");
			out.print("<h4>"+cookie+"</h4>");
			%>




		</table>




	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>