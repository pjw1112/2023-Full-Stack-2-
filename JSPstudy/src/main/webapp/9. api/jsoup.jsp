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
		<h3 class="panel-heading">1. 제목</h3>
		<p class="panel-body">소제목</p>
		<pre>
1. 사이트명/robots.txt 허용되는 부분 확인
2. maven > Jsoup Java HTML Parser  .jar 라이브러리 추가

		</pre>
		<div class="jinwoo"></div>


		<script>
			$.ajax({
				url : "${pageContext.request.contextPath}/basic1.jsoup", //경로
				type : "get", //get, post
				data : "",
				dataType : "text", // text, json, xml
				success : function(data) {
					
					$(".jinwoo").html(data);

					// Get all img elements within the div with class "btn_top_etc"
					var imgElements = document
							.querySelectorAll('.btn_top_etc img');

					// Iterate through each img element and update the src attribute
					imgElements.forEach(function(imgElement) {
						// Get the current src attribute value
						var currentSrc = imgElement.getAttribute('src');

						// Check if the src attribute contains "/kofic/"
						if (currentSrc && currentSrc.includes("/kofic/")) {
							// Replace "/kofic/" with "https://www.kofic.or.kr"
							var newSrc = currentSrc.replace("/kofic/",
									"https://www.kofic.or.kr/kofic/");

							// Update the src attribute with the new value
							imgElement.setAttribute('src', newSrc);
						}
					});

				}, // 성공시 처리

				error : function(xhr, textStatus, errorThrown) {

				} // 실패시 처리

			});//end $.ajax
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->





	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">2</h3>
		

		<div class="jinwoo2"></div>


		<script>
			$.ajax({
				url : "${pageContext.request.contextPath}/basic2.jsoup", //경로
				type : "get", //get, post
				data : "",
				dataType : "text", // text, json, xml
				success : function(data) {
					
					$(".jinwoo2").html(data);

				
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