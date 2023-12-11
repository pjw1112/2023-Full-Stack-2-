
<%@page import="com.company.jsp040.JavaDBManager"%>
<%@page import="java.sql.Connection"%>
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
		<h3 class="panel-heading">1. JAVA 파일</h3>
		<p class="panel-body">소제목</p>
		<pre>
1. 프로젝트 내의 Java Resources/ src/ main/ java - .java 클래스 파일 생성
2. JavaTest.java 파일


		</pre>
		<%@page import="com.company.jsp040.javaTest"%>
		<%@page import="com.company.jsp040.MyRandom"%>
		<%
		//javaTest a = new javaTest(10,3);
		//out.print(a.add());
		MyRandom my = new MyRandom();
		%>
		<p class="panel-body">ex1) MyRandom.java</p>
		<p>
			1~10사이의 난수를 구해줌 :
			<%=my.random()%></p>
		<br>

		<p class="panel-body">ex2) JavaDBManager.java</p>
		<p>db연동해주는 클래스 :</p>
		<pre>
		<%
		Connection conn = null;
		try {
			JavaDBManager jdb = new JavaDBManager();
			conn = jdb.getConnection();

			if (conn != null) {
				out.print("db연동 성공!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {try {conn.close();} catch (Exception e) {e.printStackTrace();} }

		}
		%>
		
		
		</pre>

	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>