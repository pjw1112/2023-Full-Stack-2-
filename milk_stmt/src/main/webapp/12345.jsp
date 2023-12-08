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
		<h3 class="panel-heading">JDBC</h3>
		<p class="well">1) jdbc 연결</p>

		<%
		Connection conn = null;
		Statement stmt = null;
		ResultSet rset = null;

		try {
			/*드라이버 로딩  */
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");
			stmt = conn.createStatement();
			rset = stmt.executeQuery("select * from milk where mno<4");

			out.print("번호\t이름\t가격<br>");
			while (rset.next()) {
				out.print(rset.getInt("mno") + "\t");
				out.print(rset.getString("mname") + "\t");
				out.print(rset.getInt("mprice"));
				out.print("<br>");
			}

			if (conn != null) {
				out.print("db연동성공!!");
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.close();
			}
		}
		%>


	</div>


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">1) score 테이블 출력</h3>


		<%

		%>
		<table>
			<caption>score!</caption>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">이름</th>
					<th scope="col">JAVA</th>
					<th scope="col">JSP</th>
					<th scope="col">SPRING</th>
					<th scope="col">PROJECT</th>
					<th scope="col">총점</th>
					<th scope="col">평균</th>
					<th scope="col">이메일</th>
				</tr>
			</thead>
			<tbody>
				<!-- JDBC 연동 -->
				<%
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mbasic", "root", "1234");
				stmt = conn.createStatement();
				rset = stmt.executeQuery("select * from score");
				while (rset.next()) {
					out.print("<tr><td>" + rset.getInt("sno") + "</td>");
					out.print("<td>" + rset.getString("sname") + "</td>");
					out.print("<td>" + rset.getInt("sjava") + "</td>");
					out.print("<td>" + rset.getInt("sjsp") + "</td>");
					out.print("<td>" + rset.getInt("sspring") + "</td>");
					out.print("<td>" + rset.getInt("sproject") + "</td>");
					out.print("<td>" + rset.getInt("sstotal") + "</td>");
					out.print("<td>" + rset.getInt("ssavg") + "</td>");
					out.print("<td>" + rset.getString("semail") + "</td></tr>");
				}
				%>
			</tbody>

		</table>

	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">2) score 테이블 에서 성적순 3명 출력</h3>


		<%

		%>
		<table>
			<caption>score 성적순 3명!</caption>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">이름</th>
					<th scope="col">JAVA</th>
					<th scope="col">JSP</th>
					<th scope="col">SPRING</th>
					<th scope="col">PROJECT</th>
					<th scope="col">총점</th>
					<th scope="col">평균</th>
					<th scope="col">이메일</th>
				</tr>
			</thead>
			<tbody>
				<!-- JDBC 연동 -->
				<%
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mbasic", "root", "1234");
				stmt = conn.createStatement();
				rset = stmt.executeQuery("select * from score order by ssavg desc limit 3");
				while (rset.next()) {
					out.print("<tr><td>" + rset.getInt("sno") + "</td>");
					out.print("<td>" + rset.getString("sname") + "</td>");
					out.print("<td>" + rset.getInt("sjava") + "</td>");
					out.print("<td>" + rset.getInt("sjsp") + "</td>");
					out.print("<td>" + rset.getInt("sspring") + "</td>");
					out.print("<td>" + rset.getInt("sproject") + "</td>");
					out.print("<td>" + rset.getInt("sstotal") + "</td>");
					out.print("<td>" + rset.getInt("ssavg") + "</td>");
					out.print("<td>" + rset.getString("semail") + "</td></tr>");
				}
				%>
			</tbody>

		</table>

	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">3) score 테이블 에서 평균이 85~90 사이인 학생 출력</h3>


		<%

		%>
		<table>
			<caption>score 평균 85~90 출력!</caption>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">이름</th>
					<th scope="col">JAVA</th>
					<th scope="col">JSP</th>
					<th scope="col">SPRING</th>
					<th scope="col">PROJECT</th>
					<th scope="col">총점</th>
					<th scope="col">평균</th>
					<th scope="col">이메일</th>
				</tr>
			</thead>
			<tbody>
				<!-- JDBC 연동 -->
				<%
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mbasic", "root", "1234");
				stmt = conn.createStatement();
				rset = stmt.executeQuery("select * from score where ssavg between 85 and 90 order by ssavg desc");
				while (rset.next()) {
					out.print("<tr><td>" + rset.getInt("sno") + "</td>");
					out.print("<td>" + rset.getString("sname") + "</td>");
					out.print("<td>" + rset.getInt("sjava") + "</td>");
					out.print("<td>" + rset.getInt("sjsp") + "</td>");
					out.print("<td>" + rset.getInt("sspring") + "</td>");
					out.print("<td>" + rset.getInt("sproject") + "</td>");
					out.print("<td>" + rset.getInt("sstotal") + "</td>");
					out.print("<td>" + rset.getInt("ssavg") + "</td>");
					out.print("<td>" + rset.getString("semail") + "</td></tr>");
				}
				%>
			</tbody>

		</table>

	</div>
	<!-- div container -->
	<!-- div container -->



	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">4) in 연산자를 사용하여 학생번호가 1,2,3 인 학생 번호, 이름, 평균 출력</h3>


		<%

		%>
		<table>
			<caption>score 번호 1,2,3인 학생 번호, 이름, 평균 출력!</caption>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">이름</th>

					<th scope="col">평균</th>

				</tr>
			</thead>
			<tbody>
				<!-- JDBC 연동 -->
				<%
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mbasic", "root", "1234");
				stmt = conn.createStatement();
				rset = stmt.executeQuery("select * from score where sno in (1,2,3) order by ssavg desc");
				while (rset.next()) {
					out.print("<tr><td>" + rset.getInt("sno") + "</td>");
					out.print("<td>" + rset.getString("sname") + "</td>");

					out.print("<td>" + rset.getInt("ssavg") + "</td></tr>");

				}
				%>
			</tbody>

		</table>

	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">5) like 연산자를 사용하여 학생이름에 'a'가 들어가 있는 이름, 평균 출력</h3>


		<%

		%>
		<table>
			<caption>score like 연산자를 사용 학생이름에 'a'가 들어가 있는 이름, 평균 출력!</caption>
			<thead>
				<tr>

					<th scope="col">이름</th>

					<th scope="col">평균</th>

				</tr>
			</thead>
			<tbody>
				<!-- JDBC 연동 -->
				<%
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mbasic", "root", "1234");
				stmt = conn.createStatement();
				rset = stmt.executeQuery("select * from score where sname like '%a%' order by ssavg desc");
				while (rset.next()) {

					out.print("<tr><td>" + rset.getString("sname") + "</td>");

					out.print("<td>" + rset.getInt("ssavg") + "</td></tr>");

				}
				%>
			</tbody>

		</table>

	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- 밀크 밀크 밀크 밀크 밀크 밀크 밀크 밀크 밀크  -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">밀크 테이블 가져오기</h3>

		<table>
			<caption>milk 테이블 출력!</caption>
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
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");
				stmt = conn.createStatement();
				rset = stmt.executeQuery("select mno, mname, mprice from milk");
				while (rset.next()) {

					out.print("<tr><td>" + rset.getInt("mno") + "</td>");
					out.print("<td>" + rset.getString("mname") + "</td>");
					out.print("<td>" + rset.getInt("mprice") + "</td></tr>");

				}
				%>
			</tbody>

		</table>

	</div>
	<!-- div container -->
	<!-- div container -->




</body>
</html>