<%@page import="com.company.dto.ImgDto"%>
<%@page import="com.company.dao.ImgDao"%>
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
1. Model

2. View
	index.jsp (구동 시작점)
	jsp063_form.jsp (이미지 올리는 폼)
	jsp063_result.jsp (이미지 결과 창)

3. Controller
	com.company.control
		ImgController
	/list.upload 최신 이미지 5장 보이게 -> jsp063_result.jsp
	/insert_view.upload 글쓰기 폼 -> jsp063_form.jsp
	/insert.upload 글쓰기 기능 -> 기능 처리 후 -> jsp063_result.jsp
		
	interface - ImgAction
	
	         ImgList ImgInsert(MultipartRequest)
	
		
		</pre>
<%
ImgDao dao = new ImgDao();


ImgDto dto = new ImgDto(2,"second",2500,"hahaha","first...");
out.print(dao.insert(dto));
out.print(dao.list());
%>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>