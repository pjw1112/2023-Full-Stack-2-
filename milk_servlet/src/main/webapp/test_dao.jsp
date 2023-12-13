<%@page import="com.company.dto.Milk_dto"%>
<%@page import="com.company.dao.Milk_dao"%>
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
		<h3 class="panel-heading">dao.list()</h3>
		
		<%
		Milk_dao dao = new Milk_dao();
		out.print(dao.list());
		
		Milk_dto dto = new Milk_dto();
		
		
		
		%>
	</div>
	<!-- div container -->
	<!-- div container -->
	
	
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">dao.insert()</h3>
		
		
		out.print("성공 여부 (1이면 성공) : ");
		out.print(dao.insert(new Milk_dto(7,"mi milk",3700)));
		
		
	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">dao.search()</h3>
		
		
		out.print("성공 여부 (1이면 성공) : ");
		out.print(dao.search(new Milk_dto(7,"mi milk",3700)));
		
		
	</div>
	<!-- div container -->
	<!-- div container -->
	
	
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">dao.update()</h3>
		
		
		out.print("성공 여부 (1이면 성공) : ");
		out.print(dao.update(new Milk_dto(7,"mi milk",500700)));
		
		
	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">dao.delete()</h3>
		
		
		out.print("성공 여부 (1이면 성공) : ");
		out.print(dao.delete(new Milk_dto(7,"mi milk",500700)));
		
		
	</div>
	<!-- div container -->
	<!-- div container -->


</body>
</html>