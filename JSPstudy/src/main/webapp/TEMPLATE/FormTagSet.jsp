<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>페이지 제목</title>
</head>
<body>
<div class="container  panel panel-warning">






	<form action="where.jsp" id="form" method="post">
		<fieldset>
			
			<div class="form-group">
				<label for="id">ID : </label> 
				<input type="text" id="id" name="id" class="form-control"/>
			</div>
			
			<div class="form-group">
				<label for="name">PASS : </label> 
				<input type="text" id="pass" name="pass" class="form-control"/>
			</div>

			<div class="form-group">
				<input type="checkbox" id="remember" name="remember"/>
			<label for="remember">아이디기억하기</label>
			</div>
			
			<div class="form-group">
				<input type="checkbox" id="select1" name="select" value="choice1" style="margin-left:10px;" />
				<label for="select1">선택1</label>
				<input type="checkbox" id="select2" name="select" value="choice2" style="margin-left:10px;" />
				<label for="select2">선택2</label>
				<input type="checkbox" id="select3" name="select" value="choice3" style="margin-left:10px;" />
				<label for="select3">선택3</label>
			
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
				<input type="submit" value="제출" id="submit" class="btn btn-danger ">
			</div>

		</fieldset>
	</form>






</div>
</body>
</html>