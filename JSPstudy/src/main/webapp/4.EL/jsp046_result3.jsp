<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp046_result3.jsp</title>
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
		<h3 class="panel-heading">1. el 사용 안 했을때</h3>
		<%
		request.setCharacterEncoding("UTF-8");
		String num1 = request.getParameter("num1");
		String num2 = request.getParameter("num2");
		String result1 = (String) request.getAttribute("result");
		%>
		<%=num1%> + <%=num2%> = <%=result1%>


		<h3 class="panel-heading">2. el 사용 했을때</h3>
		<p>${param.num1}+ ${param.num2} = ${result}</p>

		<a href="jsp046_el.jsp"></a>
	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>