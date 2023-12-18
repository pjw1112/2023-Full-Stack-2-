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
		<h3 class="panel-heading">AJAX</h3>
		<p class="panel-body">비동기화</p>
		<pre>
1. 서버에 요청
2. 요청한 데이터 (xml, csv, json) 조성
3. 요청한 데이터 일부분만 바뀌기
4. 데이터 요청이 비동기 처리(다른 작업이 가능함)

		</pre>
		<%

		%>
	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">BASIC</h3>
		<p class="panel-body"></p>
		<pre>
1. [data] - text1.txt
    홍길동
2. button 누르면!
3. .r1 영역에 이름 출력
4. 

		</pre>
		<p>
			<input type="button" id="btn1" value="button" class="btn btn-danger" />
		</p>
		<div class="r1 well">
			<p></p>
			<img alt="" src="" />
		</div>

		<script>
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
			 
			 
		 });
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->





	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">BASIC2 - DB 연동</h3>
		<p class="panel-body">아작스로 디비 연동하기</p>
		<pre>
1. Ajax001
2. button 누르면!
3. r3 영역에 - 연동성공! 출력
		</pre>
		<p>
			<input type="button" id="btn3" value="db 연동" class="btn btn-danger" />
		</p>
		<div class="r3 well">
			<p></p>
			<img alt="" src="" />
		</div>

		<script>
		 $(".r3").hide();
		 $("#btn3").on("click", () => {
			 $(".r3").toggle();
			 
			 $.ajax({
				 url:"${pageContext.request.contextPath}/Ajax001", //경로
				 type:"get", //get, post
				 data:{"name":"sally","age":"3"}, 
				 dataType:"text", // text, json, xml
				 success: function(data){ 
					 
					$(".r3").html(data)
				 }, // 성공시 처리
				 
				 error: function(xhr, textStatus, errorThrown){  
					 $(".r3").html(textStatus+"(HTTP-"+xhr.status+")");
					 
				 } // 실패시 처리
				 
			 });//end $.ajax
			 
			 
		 });
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->




	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">아작스로 중복 아이디 검사하기</h3>

		<pre>
+----+---------------+------+
| no | name          | age  |
+----+---------------+------+
|  1 | John Doe      |   25 |
|  2 | Jane Smith    |   30 |
|  3 | Bob Johnson   |   22 |
|  4 | Alice Lee     |   38 |
|  5 | Charlie Brown |   35 |
|  6 | David White   |   40 |
|  7 | Eva Miller    |   26 |
|  8 | Frank Wilson  |   32 |
|  9 | Grace Davis   |   29 |
| 10 | Henry Harris  | NULL |
+----+---------------+------+
		</pre>

		<form action="#" id="form" method="post">
			<fieldset>

				<div class="form-group">
					<label for="id">ID : </label> <input type="text" id="id" name="id" class="form-control" />
				</div>


				<div class="form-group">
					<input type="button" value="중복확인" id="submit" class="btn btn-danger ">
				</div>
				<div class="form-group result">
					
				</div>
			</fieldset>
		</form>



		<script>
		
		 $("#submit").on("click", () => {
			 if( $("#id").val()=="" ){
				 alert("빈칸입니다.\n 확인해주세요");
				 return false;
			 }
			
			$.ajax({
				 url:"${pageContext.request.contextPath}/IdCheck", //경로
				 type:"get", //get, post
				 data:{"id" : $("#id").val()}, 
				 dataType:"text", // text, json, xml
				 success: function(data){ 
					 $(".result").html(data);
					
				 }, // 성공시 처리
				 
				 error: function(xhr, textStatus, errorThrown){  
					 $(".r3").html(textStatus+"(HTTP-"+xhr.status+")");
					 
				 } // 실패시 처리
				 
			 });//end $.ajax
			 
			 
		 });
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->
</body>
</html>