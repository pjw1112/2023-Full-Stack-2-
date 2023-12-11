<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dto로 던지기</title>
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
		<h3 class="panel-heading">DTO - EL + BEAN</h3>
		<pre>
		VER-1 MVC
		A. MODEL : DB(table) / DTO(VO) / DAO (Data Access Object)
		B. VIEW : jsp051_dto.jsp(form) / jsp051_result.jsp(result)
		C. CONTROLLER : ELBean001
		
		VER-2 흐름도
		jsp051_dto_index.jsp -> ELBean001 (get) form태그 보여주기 / dispatcher
		jsp051_dto.jsp(form) -> ELBean001 (post) db 연동 후
								결과 페이지 jsp051_result.jsp (result)
		1. form action=ELBean001 / method = post / name="name"
		2. 처리 - ELBean001
		3. 처리 결과 - jsp051_result.jsp
		
		</pre>
		<form action="ELBean001" method="post" id="elTest001">
			<table class="table  table-stripped">
				<caption>BEAN</caption>
				<tbody>
					<tr>
						<th scope="row"><label for="name"> NAME : </label></th>
						<td><input type="text" name="name" id="name"></td>
					</tr>
					<tr>
						<td colspan="2">
						<input type="submit" value="입력" class="btn btn-danger">
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>