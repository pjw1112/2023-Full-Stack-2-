<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/inc/header.jsp"%>

<div class="container  panel panel-warning">
	<h3 class="panel-heading">MILK TABLE CONTROL</h3>
	<p class="well">1) WEBSTANDARD+TABLE</p>
	<table>
		<caption>milk!</caption>
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
			Statement stmt = null;
			ResultSet rset = null;

			try {
				/*드라이버 로딩  */
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");
				stmt = conn.createStatement();
				rset = stmt.executeQuery("select * from milk");

				while (rset.next()) {
					out.print("<tr><td>" + rset.getInt("mno") + "</td>");
					out.print("<td>" + rset.getString("mname") + "</td>");
					out.print("<td>" + rset.getInt("mprice") + "</td></tr>");

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

<div class="container  panel panel-warning">
	<h3 class="panel-heading">MILK 데이터 삽입(C:CREATE-RUD)</h3>
	<form action="milk_insert.jsp" method="get" id="milkInsert">
		<fieldset>
			<legend>INSERT</legend>
			<label for="mname">우유이름</label> <input type="text" name="mname" id="mname"> <label
				for="mprice">우유가격</label> <input type="text" name="mprice" id="mprice"> <input
				type="submit" id="insert" value="milk 데이터 삽입">
		</fieldset>
	</form>
	<script>
		$(function() {
			$("#milkInsert").on("submit", function() {
				if ($("#mname").val() == "") {
					alert("빈칸입니다. 확인해주세요");
					$("#mname").focus();
					return false;
				}
				if ($("#mprice").val() == "") {
					alert("빈칸입니다. 확인해주세요");
					$("#mprice").focus();
					return false;
				}
			})
		});
	</script>
	<br>
</div>

<div class="container  panel panel-warning">
	<h3 class="panel-heading">MILK 데이터 검색(CR:read-UD)</h3>
	<form action="milk_search.jsp" method="get" id="milkSelect">
		<fieldset>
			<legend>SEARCH</legend>
			<label for="mno">우유번호</label> 
			<input type="search" name="no" id="no"> 
			<input type="submit" id="search" value="milk 검색">
		</fieldset>
	</form>
	<script>
		$(function() {
			$("#milkSelect").on("submit", function() {
				if ($("#mno").val() == "") {
					alert("빈칸입니다. 확인해주세요");
					$("#mno").focus();
					return false;
				}
			})
		});
	</script>
	<br>
</div>

<div class="container  panel panel-warning">
	<h3 class="panel-heading">MILK 데이터 수정(CRU:update-D)</h3>
	<form action="milk_modify.jsp" method="get" id="milkUpdate">
		<fieldset>
			<legend>UPDATE</legend>
			<label for="updete-mname">우유이름</label> <input type="text" name="update-mname" id="updete-mname">
			<label for="update-mprice">우유가격</label> <input type="text" name="update-mprice"
				id="update-mprice"> <input type="submit" id="update" value="milk 데이터 수정">
		</fieldset>
	</form>
	<script>
		$(function() {
			$("#milkUpdate").on("submit", function() {
				if ($("#updete-mname").val() == "") {
					alert("빈칸입니다. 확인해주세요");
					$("#updete-mname").focus();
					return false;
				}
				if ($("#update-mprice").val() == "") {
					alert("빈칸입니다. 확인해주세요");
					$("#update-mprice").focus();
					return false;
				}
			})
		});
	</script>
	<br>
</div>

<div class="container  panel panel-warning">
	<h3 class="panel-heading">MILK 데이터 삭제(CRUD:delete)</h3>
	<form action="milk_delete.jsp" method="get" id="milkDelete">
		<fieldset>
			<legend>DELETE</legend>
			<label for="del-mno">우유번호</label> 
			<input type="search" name="del-mno" id="del-mno"> 
			<input type="submit" id="delete" value="milk 삭제">
		</fieldset>
	</form>
	<br>
	<script>
		$(function() {
			$("#milkDelete").on("submit", function() {
				if ($("#del-mno").val() == "") {
					alert("빈칸입니다. 확인해주세요");
					$("#del-mno").focus();
					return false;
				}
			})
		});
	</script>
</div>


<!-- div container -->
<!-- div container -->







<%@include file="/inc/footer.jsp"%>


