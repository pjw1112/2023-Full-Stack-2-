<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCOPEandSESSION_2</title>
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
		<h3 class="panel-heading">SCOPEandSESSION_2 페이지</h3>
		<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		application.setAttribute("name", name);  //application
		application.setAttribute("id", id);
		out.print("<p>application 영역 속성에 저장된 값들</p>");
		out.print("<p>name : "+application.getAttribute("name")+"님</p>");
		out.print("<p>id : "+application.getAttribute("id")+"님</p>");
		%>
		
			

	
	
	
	
	
	</div>
	<!-- div container -->
	<!-- div container -->


<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">세션 영역에 저장할 내용 입력</h3>
		<p>세션영역에 저장할 내용들</p>
		<%
		
		%>
		
			<form action="SCOPEandSESSION_3.jsp" id="form" method="post">

			<fieldset>
				<div class="form-group">
					<label for="name">EMAIL : </label> 
					<input type="text" id="email" name="email" placeholder="email을 입력하세요" class="form-control" />
				</div>
				<div class="form-group">
					<label for="id">ADDRESS : </label> 
					<input type="text" id="address" name="address" placeholder="주소를 입력하세요" class="form-control" />
				</div>
				<div class="form-group">
					<label for="id">TEL : </label> 
					<input type="text" id="tel" name="tel" placeholder="tel을 입력하세요" class="form-control" />
				</div>

				<div class="form-group">
					<input type="submit" title="session 저장하러가기" id="submit" class="btn btn-danger ">
				</div>
				
			</fieldset>

		</form>
	
	
	
	
	
	</div>
	<!-- div container -->
	<!-- div container -->


</body>
</html>