<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% 

request.setCharacterEncoding("UTF-8");

int bno = Integer.parseInt( request.getParameter("bno") );
String bname = request.getParameter("bname");
String btitle = request.getParameter("btitle");
String bcontent = request.getParameter("bcontent");
String bip = InetAddress.getLocalHost().getHostAddress();

String alert_result = "수정실패!";

Class.forName("com.mysql.cj.jdbc.Driver");/* 드라이버 로딩 ( mysql-jdbc 드라이버 ) */
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");
PreparedStatement pstmt = conn.prepareStatement("update mvcboard1 set bname=?, btitle=?, bcontent=?, bip=? where bno=?");
pstmt.setString(1, bname);
pstmt.setString(2, btitle); /*이걸로 복잡한 조건문 ' 없이 대입가능*/
pstmt.setString(3, bcontent.trim());
pstmt.setString(4, bip);
pstmt.setInt(5, bno);

if(pstmt.executeUpdate()>0){
	alert_result = "수정성공!";
}


out.print("<script>alert('" + alert_result + "'); location.href='list.jsp';</script>");

conn.close();
pstmt.close();

%>