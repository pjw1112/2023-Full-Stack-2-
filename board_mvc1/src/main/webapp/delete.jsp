<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 

request.setCharacterEncoding("UTF-8");

int bno = Integer.parseInt( request.getParameter("bno") );

String alert_result = "삭제실패!";

Class.forName("com.mysql.cj.jdbc.Driver");/* 드라이버 로딩 ( mysql-jdbc 드라이버 ) */
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");
PreparedStatement pstmt = conn.prepareStatement("delete from mvcboard1 where bno=?");
pstmt.setInt(1, bno);

if(pstmt.executeUpdate()>0){
	alert_result = "삭제성공!";
}


out.print("<script>alert('" + alert_result + "'); location.href='list.jsp';</script>");

conn.close();
pstmt.close();

%>