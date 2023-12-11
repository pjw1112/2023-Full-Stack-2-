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
		<h3 class="panel-heading">SCOPEandSESSION_1 페이지</h3>
		<p>application영역에 저장할 내용들</p>

<form action="SCOPEandSESSION_2.jsp" id="scope" method="post">

			<fieldset>
				<div class="form-group">
					<label for="name">NAME : </label> 
					<input type="text" id="name" name="name" class="form-control" />
				</div>
				<div class="form-group">
					<label for="id">ID : </label> 
					<input type="text" id="id" name="id" class="form-control" />
				</div>
				

				<div class="form-group">
					<input type="submit" value="application저장하러가기" id="submit" class="btn btn-danger ">
				</div>
				
			</fieldset>

		</form>

	
	
	
	
	
	</div>
	<!-- div container -->
	<!-- div container -->



</body>
</html>