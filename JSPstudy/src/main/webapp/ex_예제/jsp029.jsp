<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP022</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>

	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">response</h3>
		<pre>
	javax.servlet.ServletResponse
	- http 요청에 대한 응답정보를 저장하는 객체
	- 응답처리를 하는 객체인 response는 실행결과를 브라우저로 되돌려줄때 사용되는 내장객체
	- jsp에서 다른페이지로 이동시키는 방법
	(1) sendRedirect 브라우저 - url을 변경
		request/response 객체 유지 (안됨)
	(2) RequestDispatcher - url을 변경안함
		request/response 객체 유지 (됨)
	</pre>
		<%

		%>
	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">ex</h3>
		<p>다중선택</p>
		<br>
		<form action="jsp029_request.jsp"  id="form">

			<fieldset>
				<legend>response</legend>

				<div class="form-group_ch">
					<label for="email">email</label>
					<input type="text" name="email" id="email" class="form-control">
				</div>
				
				<div class="form-group">
					<input type="submit" title="확인" id="submit"  class="btn btn-danger form-control">
				</div>
			</fieldset>
		
		</form>
		<script type="text/javascript">
		// : checkbox[구분할수있는속성]:checked 체크된 것들의 갯수
		
		$("#form").on("submit",function(){
		
		
		});
		
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>