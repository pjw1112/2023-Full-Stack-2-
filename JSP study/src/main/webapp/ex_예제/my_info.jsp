<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/inc/header.jsp"%>

<%
request.setCharacterEncoding("UTF-8");
String id = (String)session.getAttribute("id");
String pass = (String)session.getAttribute("pass");

String email ="";
String tel = "";
String name ="";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rset = null;

	/*드라이버 로딩  */
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");

	pstmt = conn.prepareStatement("select * from user where id=?");
	pstmt.setString(1, id);
	rset = pstmt.executeQuery();
	
	rset.next();
	
		String db_pass = rset.getString("pass");
		String db_email = rset.getString("email");
		String db_tel = rset.getString("tel");
		String db_name = rset.getString("name");
		
		
		
		if(pass.equals(db_pass)){
			email = db_email;
			name = db_name;
			tel = db_tel;
			
		}
	
%>


<div class="container  panel jin">
	<h3 class="panel-heading">내 정보 보기</h3>

	<table class="table table-striped">
		<caption>내 정보</caption>
		<tbody>
			<tr>
				<td>아이디</td>
				<td><%=session.getAttribute("id")%></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=name%></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><%=email%></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><%=tel %></td>
			</tr>
			
		</tbody>

	</table>

</div>


<!-- div container -->
<!-- div container -->





<%@include file="/inc/footer.jsp"%>


