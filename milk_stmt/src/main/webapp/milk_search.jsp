<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");


int no = Integer.parseInt(request.getParameter("no"));

String alert_result = "추가실패!";

Class.forName("com.mysql.cj.jdbc.Driver");/* 드라이버 로딩 ( mysql-jdbc 드라이버 ) */
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");
Statement stmt = conn.createStatement();
ResultSet rset = stmt.executeQuery("select mname from milk where mno="+no+";");

while(rset.next()){
out.print("<script>alert('" + rset.getString("mname") + "');</script> ");

}

out.print("<script>location.href='NewFile1.jsp';</script>");


out.print("출력완료");
conn.close();
%>