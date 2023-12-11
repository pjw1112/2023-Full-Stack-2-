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
		<h3 class="panel-heading">좋아하는 술 종류</h3>
		<p>단일선택</p>
		<br>
		<form action="jsp026_request_before.jsp"  id="form">

			<fieldset>
				<div class="form-group">
					<label for="name">이름</label> <input type="text" id="name" name="name" class="form-control" />
					<label for="age">나이</label> <input type="text" id="age" name="age" class="form-control" />
				
				</div>

				<div class="form-group_ch">
					<label for="alcohol">술 선택</label> 
					<select id="alcohol" name="alcohol" class="form-control">
						<option value="default">-- 선택 --</option>
						<option value="소주">소주</option>
						<option value="맥주">맥주</option>
						<option value="막걸리">막걸리</option>
						<option value="칵테일">칵테일</option>
					</select>
				</div>	
					<div class="form-group">
						<input type="submit" title="확인" id="submit"  class="btn btn-danger form-control">
					</div>
				
			</fieldset>

		</form>
		<script type="text/javascript">
		// : checkbox[구분할수있는속성]:checked 체크된 것들의 갯수
		
		$("#form").on("submit",function(){
		
		if($("select[name='alcohol'] option:selected").val() =="default"){
			alert("빈칸입니다\n확인해주세요");
			$("#alcohol").focus();
			return false;
		}
		});
		
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>