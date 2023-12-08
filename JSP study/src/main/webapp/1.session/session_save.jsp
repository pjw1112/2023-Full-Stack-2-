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
request.setCharacterEncoding("UTF-8");
String id = request.getParameter("id");
String pass = request.getParameter("pass");

session.setAttribute("id", id);
session.setAttribute("pass", pass);

out.println("<meta http-equiv='refresh'  content='0.3;url=SESSION_LOGIN.jsp'/>");

%>
</body>
</html>