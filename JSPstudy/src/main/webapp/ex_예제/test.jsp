<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP022</title>
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
		<h3 class="panel-heading">DBCP</h3>
		<p class="panel-body">서버측에 저장되는 정보</p>

		<%@page import="java.sql.*"%>
		<%@page import="javax.sql.*"%>
		<%@page import="javax.naming.*"%>
		<%
		//1. server.xml 
		Context initContext = new InitialContext(); //서버.xml 에서 Context 정보 가져오는 거
		//2. 환경설정
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		//3. dataSource
		DataSource ds = (DataSource) envContext.lookup("jdbc/mbasic");
		//4. connection
		Connection conn = ds.getConnection();
		if(conn!=null){
			out.print("DBCP 연동 성공!!!");
		}else{
			out.print("DBCP 연동 실패...");
		}
		%>
		
		
		
		
		
	</div>
</body>
</html>