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
		<form action="ELBean001" method="post" id="elTest001">
			<table class="table table-stripped">
				<caption>BEAN</caption>
				<tbody>
					<tr>
						<th scope="row"><label for="name"> NAME : </label></th>
						<td><input type="text" name="name" id="name"></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="입력" class="btn btn-danger"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>