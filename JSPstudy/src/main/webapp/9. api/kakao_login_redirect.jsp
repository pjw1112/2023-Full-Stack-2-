<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>페이지 제목</title>
<!-- Bootstrap and Jquery -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Bootstrap and Jquery -->
</head>
<body>
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">카카오 로그인 사용자 정보 페이지</h3>
		<p class="panel-body">로그인 성공!</p>
		<pre>

		</pre>
		<table class="table table-striped">
			<caption>로그인 사용자 정보</caption>

			<tbody>
				<tr>
					<td>프로필 사진</td>
					<td><img alt="" src=${thumbnail_image_url}></td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td>${nickname}</td>
				</tr>
				<tr>
					<td>이메일</td>
					<td>${email}</td>
				</tr>

			</tbody>

		</table>
		<p><a href="Kakao_logOut" class="btn btn-info">로그아웃</a></p>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>