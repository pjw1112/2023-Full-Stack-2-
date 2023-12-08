<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
session.invalidate();
out.println("<meta http-equiv='refresh'  content='0.3;url=SESSION_LOGIN.jsp'/>");

%>
</body>
</html>