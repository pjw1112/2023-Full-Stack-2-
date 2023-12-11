<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELBean001 result</title>
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
		<h3 class="panel-heading">ELBean001 결과물</h3>
		<pre>
class ELDto{
 private String name;
 private int age;
 //기본 생성자, 파라미터 있는 생성자
 //getter + setter ####꼭 만들어야 함
}
 
 #2. controller - servlet
 request.setAttribute("dto", new ELDto(받아온 이름, 받아온 나이));
	
		</pre>
		
		<p>고양이 정보 : ${dto.name} - ${dto.age}</p>
		<p>고양이 정보 : ${requestScope.dto.name} - ${requestScope.dto.age}</p>
		
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>