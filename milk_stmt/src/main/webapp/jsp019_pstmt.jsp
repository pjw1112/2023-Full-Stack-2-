<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<style>
table {
	width: 100%;
	text-align: center;
}

table tr>th {
	background-color: rgb(230, 230, 230);
	border: 1px solid rgb(200, 200, 200);
	padding: 10px;
	text-align: center;
}

table>tbody>tr {
	margin: 10px;
}

table>tbody>tr>td {
	margin: 10px;
	border: 1px solid rgb(200, 200, 200);
	padding: 10px;
}
</style>
<body>
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">JDBC - PSTMT</h3>
		<p class="well">PSTMT</p>
<table>
			<caption>score 성적순 3명!</caption>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">이름</th>
					<th scope="col">가격</th>
					
				</tr>
			</thead>
			<tbody>
		<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		/*드라이버 로딩  */
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");

		/*PrepareStatement 사용준비 */

		pstmt = conn.prepareStatement("select * from milk");
		/*pstmt.setInt(1, 2); 이걸로 복잡한 조건문 ' 없이 대입가능*/
		/*pstmt.setInt(1, 2);
		pstmt.setString(2, "choco");*/
		rset = pstmt.executeQuery();

		out.print("번호\t이름\t가격<br>");
		while (rset.next()) {
			out.print("<tr><td>"+rset.getInt("mno") + "</td>");
			out.print("<td>"+rset.getString("mname") + "</td>");
			out.print("<td>"+rset.getInt("mprice") + "</td></tr>");
			
		}

		if (conn != null) {
			out.print("<script>alert(\"db연동성공!!\");</script>");
		}
		%>
		</tbody>

		</table>
	</div>


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">2) milk에 행 삽입</h3>


		<%

		%>
		<table>
			<caption>milk 테이블</caption>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">이름</th>
					<th scope="col">가격</th>
					
				</tr>
			</thead>
			<tbody>
				<!-- JDBC 연동 -->
				<%
				

				pstmt = conn.prepareStatement("insert into milk (mname,mprice) values (?,?)");
				/*pstmt.setInt(1, 2); 이걸로 복잡한 조건문 ' 없이 대입가능*/
				pstmt.setString(1, "white");
				pstmt.setInt(2, 1500);
				int result = pstmt.executeUpdate();
				while (result>0) {
					out.print("<script>alert(\"추가성공!!\");</script>");
					break;
				}
				
				%>
			</tbody>

		</table>

	</div>
	<!-- div container -->
	<!-- div container -->















</body>
</html>