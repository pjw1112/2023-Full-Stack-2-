<%@page import="com.google.gson.JsonParser"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.Gson"%>
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
<script src="https://cdn.ckeditor.com/4.22.1/standard/ckeditor.js"></script>
<!-- Bootstrap and Jquery -->
<style type="text/css">
textarea {
	resize: none; /* 크기 조절 비활성화 */
}
#editor{

}
</style>
</head>
<body>

	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">메일 보내기</h3>
		<p class="panel-body">Mail</p>
		<pre>
0. naver - smtp ( simple mail transfer protocol) 인터넷상에서 메일 보내는 전송 규약
1-1. jar 파일 추가
https://mvnrepository.com/artifact/javax.mail/mail/1.4.7
https://mvnrepository.com/artifact/javax.activation/activation/1.1.1
https://ckeditor.com/ckeditor-4/download/
1-2. head에 cdn 추가
script src="https://cdn.ckeditor.com/ckeditor5/40.2.0/classic/ckeditor.js"
2. view - ckeditor
		</pre>

		<form action="${pageContext.request.contextPath}/MailNaver" method="post">
			<fieldset>
				<legend>관리자에게 문의하기</legend>
				<div class="form-group">
					<label for="subject">TITLE</label> 
					<input type="text" name="subject" id="subject" class="form-control">
				</div>


				<div class="form-group">
					<label for="content">CONTENT</label>
					<textarea name="content" class="form-control" id="content"></textarea>
				</div>

				<div class="form-group">
					
					<input type="submit" value="메일보내기" class="btn btn-danger form-control">
				</div>

			</fieldset>
		</form>

		




		<script>
		
		 CKEDITOR.replace( 'content' );
		  
		  /*
		 $(".r1").hide();
		 $("#btn1").on("click", () => {
			 $(".r1").toggle();
			 
			 $.ajax({
				 url:"../upload/text1.txt", //경로
				 type:"get", //get, post
				 data:"", 
				 dataType:"text", // text, json, xml
				 success: function(text){ 
					 
					$(".r1 p").html(text);   
				 
			        // 이미지 파일 경로
			        var imageUrl = "../upload/cheawon.jpg";

			        // 이미지를 표시할 img 태그에 속성 설정
			        $(".r1 img").attr("src", imageUrl);
				 
				 }, // 성공시 처리
				 
				 error: function(xhr, textStatus, errorThrown){  
					 $(".r1").html(textStatus+"(HTTP-"+xhr.status+")");
					 
				 } // 실패시 처리
				 
			 });
			 
			 
		 });*/
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->


</body>
</html>