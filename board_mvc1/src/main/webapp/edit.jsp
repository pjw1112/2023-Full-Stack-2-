<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com -->
<title>DETAIL</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
.wapper {
	
}

.header {
	width: 100px;
	height: 100px;
	background-color: pink;
	font-size: 30px;
	text-align: center;
	line-height: 100px;
}

.main {
	flex-grow: 1;
}

.footer {
	width: 100%;
	height: 100px;
	background-color: pink;
	font-size: 30px;
	text-align: center;
	line-height: 100px;
}

.container {
	display: flex;
	flex-direction: column; /* 세로 방향으로 정렬 */
}

.btn {
	margin-top: auto; /* 아래로 버튼을 이동시킴 */
}

.ul {
	flex-direction: row;
}
.none{
	display: none;
}
</style>
</head>
<body>
	<div class="container mysub">
		<h3>edit.jsp</h3>
		<form action="edit_action.jsp" method="post">
			<fieldset>
				<legend>글 수정하기</legend>
				<%
				request.setCharacterEncoding("UTF-8");
				
				int bno = Integer.parseInt(request.getParameter("bno"));
				int bhit = 0;
				
				String bcontent = "";
				String bname="";
				String btitle = "";
				
				Connection conn = null;
				PreparedStatement pstmt = null;
				ResultSet rset = null;

				try {
					/*드라이버 로딩  */
					Class.forName("com.mysql.cj.jdbc.Driver");
					conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "1234");

					/*PrepareStatement 사용준비 */
					pstmt = conn.prepareStatement("update mvcboard1 set bhit=bhit+1 where bno=? ");
					pstmt.setInt(1, bno);
					pstmt.executeUpdate();
					
					pstmt = conn.prepareStatement("select * from mvcboard1 where bno=?");
					/*pstmt.setInt(1, 2); 이걸로 복잡한 조건문 ' 없이 대입가능*/
					pstmt.setInt(1, bno);
					rset = pstmt.executeQuery();

					while (rset.next()) {
						bcontent = rset.getString("bcontent");
						btitle = rset.getString("btitle");
						bname = rset.getString("bname");
						bhit = rset.getInt("bhit");
					}
					if (conn != null) {
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally {
					if (conn != null) {
						conn.close();
						rset.close();
						pstmt.close();
					}
				}
				%>
				
				<input type="text" id="bno" name="bno" class="form-control none" value="<%=bno %>" >
				
				<div class="form-group">
					<label for="bname">이름</label> 
					<input type="text" id="bname" name="bname" class="form-control" value="<%=bname %>" >
				</div>

				<div class="form-group">
					<label for="btitle">제목</label> 
					<input type="text" id="btitle" name="btitle" class="form-control" value="<%=btitle %>" >
				</div>

				<div class="form-group">
					<label for="bcontent">내용</label>
					<textarea rows="20" id="bcontent" name="bcontent" class="form-control" ><%=bcontent%></textarea>

				</div>

				<div class="form-group">
				<input type="submit"  title="수정" value="수정 완료" class="btn btn-danger form-control"> 
				<a href="list.jsp" title="취소" class="btn btn-default form-control">취소</a> 
					
				</div>

			</fieldset>
		</form>
	</div>
</body>
</html>