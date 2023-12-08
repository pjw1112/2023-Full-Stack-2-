<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- Theme Made By www.w3schools.com -->
<title>WRITE</title>
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

#bcontent {
	height: 400px;
}
</style>
</head>
<body>
	<div class="container mysub">
		<h3>write.jsp</h3>
		<form action="write_action.jsp" method="post">
			<fieldset>
				<legend>글 쓰기</legend>

				<div class="form-group">
					<label for="bname">이름</label> 
					<input type="text" id="bname" name="bname" class="form-control readonly" />
				</div>

				<div class="form-group">
					<label for="bname">제목</label> 
					<input type="text" id="btitle" name="btitle" class="form-control readonly" />
				</div>

				<div class="form-group">
					<label for="bname">내용</label> 
					
					<textarea rows="" cols="" id="bcontent" name="bcontent" class="form-control readonly"></textarea>
				</div>

				<div class="form-group">
				<input type="submit"  title="글쓰기처리링크이동" class="btn btn-danger form-control">
					<a href="" title="삭제링크이동" class="btn btn-default form-control">취소</a> 
					<a href="list.jsp" title="목록링크이동" class="btn btn-default form-control">목록보기</a>
				</div>

			</fieldset>
		</form>
	</div>
</body>
</html>