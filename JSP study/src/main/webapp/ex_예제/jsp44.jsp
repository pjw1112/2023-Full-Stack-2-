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
서블릿 로긴
</pre>
		<form action="Servlet_login" id="form" method="post">
			<fieldset>
				<legend>Search</legend>
				<div class="form-group">
					<label for="id">아디 : </label> <input type="text" id="id" name="id" />
				</div>
				<div class="form-group">
					<label for="pass">비번 : </label> <input type="text" id="pass" name="pass" />
				</div>

				<div class="form-group">
					<input type="submit" value="로긴" id="submit" class="btn btn-danger ">
				</div>

			</fieldset>
		</form>


	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>