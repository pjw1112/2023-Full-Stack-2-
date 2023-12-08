<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- header import -->
<%@include file="/inc/header.jsp"%>
<!-- header import -->

<div class="main">
<div class="container  panel panel-warning board_main">
	<h3 class="panel-heading">MVC1 BOARD</h3>
	
	<table>
		<caption>mvc1_board</caption>
		<thead>
			<tr>
				<th scope="col">번호</th>
				<th scope="col">이름</th>
				<th scope="col col_title">제목</th>
				<th scope="col">날짜</th>
				<th scope="col">조회수</th>
			</tr>
		</thead>
		<tbody>
			<%
			Connection conn = null;
			PreparedStatement pstmt = null;
			ResultSet rset = null;

			try {
				

				/*드라이버 로딩  */
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");

				/*PrepareStatement 사용준비 */

				pstmt = conn.prepareStatement("select * from mvcboard1 order by bno desc limit 15");
				/*pstmt.setInt(1, 2); 이걸로 복잡한 조건문 ' 없이 대입가능*/
				/*pstmt.setInt(1, 2);
				pstmt.setString(2, "choco");*/
				rset = pstmt.executeQuery();

				while (rset.next()) {
					out.print("<tr><td>" + rset.getInt("bno") + "</td>");
					out.print("<td>" + rset.getString("bname") + "</td>");
					out.print("<td>" + rset.getString("btitle") + "</td>");
					out.print("<td>" + rset.getString("bdate") + "</td>");
					out.print("<td>" + rset.getInt("bhit") + "</td></tr>");

				}

				if (conn != null) {
					
				}

			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (conn != null) {
					conn.close();
				}
			}
			%>
		</tbody>

	</table>
	<br>
</div>

</div>
<!-- footer import -->
<%@include file="/inc/footer.jsp"%>
<!-- footer import -->
