<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
String mname = request.getParameter("update-mname");
int mprice = Integer.parseInt(request.getParameter("update-mprice"));
String alert_result = "추가실패!";

Class.forName("com.mysql.cj.jdbc.Driver");/* 드라이버 로딩 ( mysql-jdbc 드라이버 ) */
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");
Statement stmt = conn.createStatement();
ResultSet rset = null;

int result = stmt.executeUpdate("update milk set mprice="+mprice+" where mname='"+mname+"';");

if (result > 0) {
	alert_result = "수정 성공!";
}
out.print("<script>alert('" + alert_result + "'); location.href='NewFile1.jsp';</script>");

conn.close();
%>