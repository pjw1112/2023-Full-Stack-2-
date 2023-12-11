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
<style type="text/css">
input[type="checkbox"] {
	border-right: 10px solid red;
}
</style>
</head>
<body>

	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">CHECKBOX - 다중선택</h3>
		<p>다중선택</p>
		<br>
		<form action="jsp023_request.jsp"  id="form">

			<fieldset>
				<div class="form-group">
					<label for="name">회원명</label> <input type="text" id="name" name="name" class="form-control" />
				</div>

				<div class="form-group_ch">
					<label for="check">반려동물들&nbsp</label> 
					<input type="checkbox" id="dog" name="animal" value="dog">
					<label for="dog">&nbspDOG&nbsp&nbsp</label> 
					<input type="checkbox" id="cat" name="animal" value="cat">
					<label for="dog">&nbspCAT&nbsp&nbsp</label> 
					<input type="checkbox" id="pig" name="animal" value="pig">
					<label for="dog">&nbspPIG&nbsp&nbsp</label>

					<div class="form-group">
						<input type="submit" title="확인" id="submit"  class="btn btn-danger form-control">
				</div>
			</fieldset>

		</form>
		<script type="text/javascript">
		// : checkbox[구분할수있는속성]:checked 체크된 것들의 갯수
		
		$("#form").on("submit",function(){
		
		if($(":checkbox[name='animal']:checked").length==0){
			alert("빈칸입니다\n확인해주세요");
			
			return false;
		}
		});
		
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->












</body>
</html>