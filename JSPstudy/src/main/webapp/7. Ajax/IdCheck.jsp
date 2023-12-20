<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 중복 검사</title>
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
		<h3 class="panel-heading">아작스로 중복 아이디 검사하기</h3>

		<pre>
mysql > mbasic 데이터 베이스 > userinfo 테이블에서 조회 (서블릿에서 처리)
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
				<div class="form-group result"></div>
			</fieldset>
		</form>



		<script>
		
		//빈칸 검사
		$("#submit").on("click", () => {
			 if( $("#id").val()=="" ){
				 alert("빈칸입니다.\n 확인해주세요");
				 return false;
		}
			
			 
			//ajax 요청 
			$.ajax({
				 url:"${pageContext.request.contextPath}/IdCheck", //경로
				 type:"get", //get, post
				 data:{"id" : $("#id").val()}, //서블릿으로 보낼 데이터
				 dataType:"text", // 서블릿으로 부터 받을 데이터 타입
				 success: function(data){ 
					 
					 $(".result").html(data); //결과 처리
					
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