<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL 표현식</title>
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
		<h3 class="panel-heading">1. EL 표현식</h3>
		<p class="panel-body">JSP에서 출력에 대한 표현을 쉽게 하기 위해 개발한 태그</p>
		<p>1. <%out.print("hello");%> </p>
		<p>2. <%="hello"%> </p>
		<p>3. ${"hello"} </p>

	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">2. EL 자료형 + 연산자</h3>
		<p class="panel-body">JSP에서 출력에 대한 표현을 쉽게 하기 위해 개발한 태그</p>
		<dl>
			<dt>1) 정수형</dt>
			<dd>${10}</dd>
			
			<dt>2) 실수형</dt>
			<dd>${3.14}</dd>
			<dt>3) 문자열형</dt>
			<dd>${"abc"}</dd>
			<dt>4) 문자형</dt>
			<dd>${'a'}</dd>
			<dt>5) null</dt>
			<dd>${null}</dd>
			<dt>6) 논리형</dt>
			<dd>${true}</dd>
			<dt>7) 비교연산자</dt>
			<dd>${10<3}</dd>
		</dl>

	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">3. EL PARAMETER</h3>
		<pre>
1. action - jsp046_result.jsp
2. method - get
3. name값 - search
		</pre>

		<form action="jsp046_result.jsp" method="get">
			<fieldset>
				<legend>EL Parameter</legend>
				<div class="form-group">
					<label for="">검색</label> 
					<input type="search" placeholder="검색어를 입력해주세요" name="search" id="search" class="form-control" />
				</div>

				<div class="form-group">
					<input type="submit" value="검색" title="검색을 시작합니다." class="form-control btn btn-danger">

				</div>

			</fieldset>


		</form>

	</div>
	<!-- div container -->
	<!-- div container -->



	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">TEST001) 표현 언어 (EL)에서 폼태그에서 요청 파라미터</h3>
		<pre>
로그인 버튼을 클릭하면 아이디와 비밀번호 빈칸 검사
jsp046_result2.jsp 페이지로 넘어가서 el을 이용해 출력
		</pre>

		<form action="jsp046_result2.jsp" method="get">
			<fieldset>
				<legend>로그인</legend>
				<div class="form-group">
					<label for="">아이디</label> <input type="text" name="id" id="id" class="form-control" />
				</div>

				<div class="form-group">
					<label for="">비밀번호</label> <input type="password" name="pass" id="pass" class="form-control" />
				</div>
				<div class="form-group">
					<input type="submit" value="로그인" title="로그인" class="btn btn-success"> 
					<a href="jsp046_el.jsp" value="다시작성" title="다시작성" class=" btn btn-success">다시작성</a>
				</div>

			</fieldset>


		</form>

	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">TEST002) PARAM TEST</h3>
		<pre>
로그인 버튼을 클릭하면 아이디와 비밀번호 빈칸 검사
jsp046_result2.jsp 페이지로 넘어가서 el을 이용해 출력
		</pre>

		<h3 class="panel-heading">표현언어EL 에서 폼태그의 형변환이 필요없는 요청파라미터</h3>
		<form action="ABC" method="get">
			<fieldset>
				<legend>PLUS PROGRAM</legend>
				<div class="form-group">
					<label for="">숫자1</label> <input type="text" name="num1" id="num1" class="form-control" />
				</div>

				<div class="form-group">
					<label for="">숫자2</label> <input type="text" name="num2" id="num2" class="form-control" />
				</div>
				<div class="form-group">
					<input type="submit" value="더하기연산" title="더하기연산" class="btn btn-success">
				</div>

			</fieldset>


		</form>

	</div>
	<!-- div container -->
	<!-- div container -->



	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">TEST003) OPERATOR</h3>
		<pre>
아래와 같이 출력
		</pre>

		<h3 class="panel-heading">EL - OPERATOR</h3>
		<p>\${10+3}=${10+3}</p>
		<p>\${10-3}=${10-3}</p>
		<p>\${10*3}=${10*3}</p>
		<p>\${10/3}=${10/3}</p>
		<p>\${10%3}=${10%3}</p>
		<p>\${10==3}=${10==3}</p>
		<p>\${10!=3}=${10!=3}</p>
		<p>\${10>=3}=${10>=3}</p>
		<p>\${10&gt;3}=${10>3}</p>
		<p>\${10<=3}=${10<=3}</p>
		<p>\${10&lt;3}=${10<=3}</p>
		<p>\${(10+3==13)?"OK":"NOT OK"} = ${(10+3==13)?"OK":"NOT OK"}</p>

	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">TEST004) 세션설정해주세요 key:elTest - value:sessionTest</h3>
		<pre>
	1. 세션에 이름 저장 elTest, sessionTest
	2. 넘겨준 name 파라미터와 저장한 세션 출력
		</pre>

		<h3 class="panel-heading">표현언어EL 에서 폼태그의 형변환이 필요없는 요청파라미터</h3>
		<!--  <form action="ELTest4Session" method="post"> 1.webapp 안에서 찾는경우-->
		<!--  <form action="<%=request.getContextPath() %>/ELTest4Session" method="post">  -->
		<!--  <form action="${pageContext.request.getContextPath()}/ELTest4Session" method="post">  -->
		
		<form action="ELTest4Session" method="post"> 
			<fieldset>
				<legend>PLUS PROGRAM</legend>
				<div class="form-group">
					<label for="">NAME : </label> 
					<input type="text" name="name" id="name" class="form-control" />
				</div>

				<div class="form-group">
					<input type="submit" value="입력" title="" class="btn btn-success">
				</div>

			</fieldset>


		</form>

	</div>
	<!-- div container -->
	<!-- div container -->








</body>
</html>