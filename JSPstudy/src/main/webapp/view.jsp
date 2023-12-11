<%@page import="com.company.jsp051.ELItem"%>
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
<script type="text/javascript">

if('${result}'=='success'){
	alert("삽입 성공");
}


</script>
</head>
<body>
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">표현식을 이용한 출력방법</h3>

		<table class="table table-striped">
			<caption>item</caption>
			<thead>
				<tr>
					<td>INO</td>
					<td>INAME</td>
					<td>IPRICE</td>
					<td>IDESCRIPTION</td>
				</tr>
			</thead>
			<tbody>

				<tr>
					<td>${item.ino}</td>
					<td>${item.name}</td>
					<td>${item.price}</td>
					<td>${item.description}</td>
				</tr>

			</tbody>

		</table>

	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>