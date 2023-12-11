<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>COOKIE_2</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
<%
// 1. 쿠키객체 선언 및 이름값 저장
Cookie cookie1 = new Cookie("name","sally");
Cookie cookie2 = new Cookie("age","3");

// 2. 쿠키 유효기간 설정
cookie1.setMaxAge(60);  //60초  => 1분
cookie2.setMaxAge(600); //600초 => 10분

// 3. response에 탑재 설정
response.addCookie(cookie1);
response.addCookie(cookie2);
response.sendRedirect("COOKIE_1.jsp");

%>
</body>
</html>