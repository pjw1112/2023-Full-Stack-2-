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
</style>
</head>
<body>
	<div class="container mysub">
		<h3>detail.jsp</h3>
		<form action="" method="post">
			<fieldset>
				<legend>글 보기</legend>
				<%
				request.setCharacterEncoding("UTF-8");
				int bno = Integer.parseInt(request.getParameter("bno"));
				String bcontent = "";
				String bname = "";
				String btitle = "";
				int bhit = 0;
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
				<div class="form-group">
					<label for="bname">조회수</label> <input type="text" id="bhit" name="bhit" class="form-control"
						value="<%=bhit%>" readonly />
				</div>

				<div class="form-group">
					<label for="bname">이름</label> <input type="text" id="bname" name="bname" class="form-control"
						value="<%=bname%>" readonly />
				</div>

				<div class="form-group">
					<label for="bname">제목</label> <input type="text" id="btitle" name="btitle"
						class="form-control" value="<%=btitle%>" readonly />
				</div>

				<div class="form-group">
					<label for="bname">내용</label>
					<textarea rows="20" cols="" id="bcontent" name="bcontent" class="form-control" readonly><%=bcontent%></textarea>

				</div>

				<div class="form-group">

					<a href="edit.jsp?bno=<%=bno%>" title="수정" class="btn btn-danger form-control">수정</a>
					<a href="delete.jsp?bno=<%=bno%>" title="삭제" class="btn btn-default form-control">삭제</a> 
					<a href="list.jsp" title="목록링크이동" class="btn btn-default form-control">글목록</a>
				</div>

			</fieldset>
		</form>
	</div>
</body>
</html>