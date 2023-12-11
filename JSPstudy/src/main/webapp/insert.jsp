<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP052.JSP</title>
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
		<h3 class="panel-heading">가격대 검색 get</h3>

		<form action="${pageContext.request.contextPath}/ELBean005" id="form" method="get">
			<fieldset>
				<legend>가격대 검색</legend>
				
				<label> 
				<input type="radio" name="price_range" value="choice1"> 1,500원 미만
				</label> <br> <label> 
				<input type="radio" name="price_range" value="choice2"> 1,500원 ~ 3,000원
				</label> <br> <label> 
				<input type="radio" name="price_range" value="choice3"> 3,000원 초과
				</label> 



				<div class="form-group">
					<input type="submit" value="검색" id="submit" class="btn btn-danger"> 
					
				</div>

			</fieldset>
		</form>
	</div>
	<!-- div container -->
	<!-- div container -->






	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">가격대 삽입 (POST)</h3>

		<form action="${pageContext.request.contextPath}/ELBean004" id="form" method="post">
			<fieldset>
				<legend>ITEM INFO</legend>
				<div class="form-group">
					<label for="name">ITEM NAME : </label> <input type="text" id="name" name="name" class="form-control" />
				</div>

				<div class="form-group">
					<label for="price">ITEM PRICE : </label> <input type="text" id="price" name="price" class="form-control" />
				</div>

				<div class="form-group">
					<label for="price">ITEM DESCRIPTION : </label> <input type="text" id="description" name="description" class="form-control" />
				</div>


				<div class="form-group">
					<input type="submit" value="item info" id="submit" class="btn btn-danger "> <input type="reset" value="reset" id="reset" class="btn btn-danger ">
				</div>

			</fieldset>
		</form>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>