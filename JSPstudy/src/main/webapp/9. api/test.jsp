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
		<h3 class="panel-heading">dddddddd</h3>
		<p class="panel-body">sssss</p>
		<pre>
Myse 테스트
		</pre>

		<script>
			$.ajax({
				url : "${pageContext.request.contextPath}/basic3.jsoup", //경로
				type : "get", //get, post
				data : "",
				dataType : "text", // text, json, xml
				success : function(data) {
					console.log(data);
					$("pre").html(data);

					// Get all img elements within the div with class "btn_top_etc"
					var imgElements = document
							.querySelectorAll('.btn_top_etc img');
				
				}, // 성공시 처리

				error : function(xhr, textStatus, errorThrown) {

				} // 실패시 처리

			});//end $.ajax
		</script>

	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>