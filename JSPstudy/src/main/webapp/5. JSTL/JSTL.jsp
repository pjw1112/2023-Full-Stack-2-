<%@page import="com.company.jsp051.ELDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL001</title>
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
		<h3 class="panel-heading">[001] JSTL CORE 라이브러리</h3>
		<pre>
		1. test 변수
		2. hello 저장
		3. 변수 출력
		4. 변수 제거
		</pre>
		<%
		String test = "hello";
		%>

		<c:set var="msg" value="hello" />
		<c:out value="${msg}" />
		${msg}
		<hr>
		<c:set var="age1" value="35" />
		${age1}
		<hr>
		<c:set var="add" value="${10+5}" />
		<c:out value="${add}" />
		${10+5}
		<hr>
		<c:set var="flag" value="10>5" />

		<c:out value="${flag}" />
		<hr>
		<%
		ELDTO member = new ELDTO();
		member.setName("sally");
		member.setAge(10);
		out.print(member.getName());
		%>
		<c:set var="member" value="<%=new ELDTO()%>" />
		<c:set target="${member}" property="age" value="7" />
		<c:set target="${member}" property="name" value="alpha" />
		<c:out value="${member}" />
		<hr>
		<c:out value="${member.name}" />
		<c:out value="${member.age}" />
		<c:set var="jelly" value="<%=new ELDTO()%>" />
		<c:set target="${jelly}" property="age" value="1000" />
		<c:set target="${jelly}" property="name" value="지구젤리" />
		<hr>
		<c:out value="${jelly.age}" />
		<c:out value="${jelly.name}" />
		<hr>
		<c:set var="jelly2" value="<%=new ELDTO(\"축구공\", 15000)%>" />

		<c:out value="${jelly2.age}" />
		<c:out value="${jelly2.name}" />
		<hr>

	</div>
	<!-- div container -->
	<!-- div container -->



	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">JSTL 제어문 if</h3>
		<c:if test="1<2">참이라면 실행 - 작동 x </c:if>
		<c:if test="${1<2}">참이라면 실행 - 작동 o </c:if>

	</div>
	<!-- div container -->
	<!-- div container -->


	<div class="container panel panel-info">
		<h3 class="panel-heading">[002] 제어문-if</h3>
		<pre> 연습문제1) IF(1) : 5는 10보다 작다면 5는10보다 작다 출력</pre>
		<c:if test="${5<10}">5는 10보다 작다 </c:if>

		<pre> 연습문제2) IF(2) : 변수 iftest001 / 값 10설정 / 만약iftest001가 10이라면 10출력 </pre>
		<c:set var="iftest001" value="10" />
		<c:if test="${iftest001==10}">iftest001가 10 </c:if>

		<pre> 연습문제3) IF(3) : FORM</pre>
		<form action="result.jsp" method="get">
			<fieldset>
				<legend>COLOR</legend>
				<div class="form-group">
					<label for="color">색상을 선택하세요.</label> <select id="color" name="color" class="form-control">
						<option value="1">RED</option>
						<option value="2">GREEN</option>
						<option value="3">BLUE</option>
					</select>
				</div>
				<div class="form-group">
					<input type="submit" value="전송" class="form-control btn btn-danger">
				</div>
			</fieldset>
		</form>
	</div>


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">JSTL 제어문 CHOOSE</h3>
		<c:choose>
			<c:when test="${1+2==4}">1+2==4 TRUE</c:when>
			<c:when test="${1+2==3}">1+2==3 TRUE</c:when>
			<c:when test="${1+2==2}">1+2==2 TRUE</c:when>
			<c:otherwise>1+2 결과값을 확인해주세요!</c:otherwise>
		</c:choose>

	</div>
	<!-- div container -->
	<!-- div container -->

	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">CHOOSE 연습문제</h3>
		<c:set var="whentest001" value="2" />
		<c:choose>
			<c:when test="${whentest001==1}">whentest001변수의 값은 1이다.</c:when>
			<c:when test="${whentest001==2}">whentest001변수의 값은 2이다.</c:when>
			<c:when test="${whentest001==3}">whentest001변수의 값은 3이다.</c:when>
			<c:otherwise>1+2 결과값을 확인해주세요!</c:otherwise>
		</c:choose>

		<hr>

		<c:set var="whentest002" value="a" />
		<c:choose>
			<c:when test="${whentest002.equals('a')}">whentest002변수의 값은 a이다.</c:when>
			<c:when test="${whentest002.equals('b')}">whentest002변수의 값은 b이다.</c:when>
			<c:when test="${whentest002.equals('c')}">whentest002변수의 값은 c이다.</c:when>
			<c:otherwise>1+2 결과값을 확인해주세요!</c:otherwise>
		</c:choose>


	</div>
	<!-- div container -->
	<!-- div container -->

	<div class="container panel panel-info">
		<h3 class="panel-heading">JSTL 제어문 CHOOSE (choice)</h3>

		<form action="result2.jsp" method="get">
			<fieldset>
				<legend>COLOR</legend>
				<div class="form-group">
					<label for="color">색상을 선택하세요.</label> <select id="color" name="color" class="form-control">
						<option value="1">막걸리</option>
						<option value="2">맥주</option>
						<option value="3">칵테일</option>
					</select>
				</div>
				<div class="form-group">
					<input type="submit" value="전송" class="form-control btn btn-danger">
				</div>
			</fieldset>
		</form>
	</div>



	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">JSTL FOR-1</h3>
		<pre>
		for(초기값; 조건문; 증감문){ 처리하는 내용 }
		for(시작값; 종료값; 변화){ 처리하는 내용 }
		for(int i=0; i<10; i++){ 처리하는 내용 }
		
		c:forEach  var="i"  begin="시작"  end="종료"  step="증가"
		</pre>
		<hr>
		<c:forEach var="i" begin="0" end="10" step="1"> ${i} </c:forEach>
		<hr>
		<pre>1) 1  2  3  4  5</pre>
		<c:forEach var="i" begin="1" end="5" step="1"> ${i} </c:forEach>
		<hr>
		<pre>2) 2  4  6  8</pre>
		<c:forEach var="i" begin="2" end="8" step="2"> ${i} </c:forEach>
		<hr>
		<pre>3) 5  4  3  2  1</pre>
		<c:forEach var="i" begin="1" end="5" step="1"> ${6-i} </c:forEach>
	</div>
	<!-- div container -->
	<!-- div container -->

	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">JSTL FOR-2</h3>
		<pre>
c:forEach var="i" begin="시작" end="종료" step="증가" 
c:forEach var="i" varStaus="status"
status.begin 시작
status.end   끝
status.first 시작여부 - true / false
status.last  끝여부  - true / false
status.index index정보 ★★
status.count 갯수정보 ★★
		</pre>
		<c:forEach var="i" begin="0" end="10" varStatus="status">
			<p>begin : ${status.begin}, index : ${i}, end : ${status.end}</p>
		</c:forEach>
		<hr>

		<c:forEach var="i" begin="100" end="110" varStatus="status">

			<p>status.index : ${status.index}, index : ${i}, status.count : ${status.count}</p>
		</c:forEach>


	</div>
	<!-- div container -->
	<!-- div container -->



	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">JSTL FOR-연습문제</h3>

		<h5>연습문제 01)</h5>
		<c:forEach var="i" begin="0" end="10" varStatus="status">
			<p>${status.index}</p>
		</c:forEach>
		<hr>

		<h5>연습문제 02)</h5>
		<table class="table table-striped">
			<caption>varStatus001</caption>
			<thead>
				<tr>
					<td>index</td>
					<td>count</td>
					<td>cnt</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" begin="7" end="10" varStatus="status">
					<tr>
						<td>${status.index}</td>
						<td>${status.count}</td>
						<td>${i}</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>
		<br> <br>
		<style>
.color1 {
	color: red;
}

.color2 {
	color: blue;
}

.color3 {
	color: green;
}

.color4 {
	color: yellow;
}

.color5 {
	color: black;
}
</style>
		<h5>연습문제 03)</h5>
		<table class="table table-striped">
			<caption>varStatus002</caption>
			<thead>
				<tr>
					<td>index</td>
					<td>count</td>
					<td>cnt</td>
					<td>begin</td>
					<td>end</td>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="i" begin="1" end="10" step="2" varStatus="status">
					<c:choose>
						<c:when test="${status.first}">
							<c:set var="color" value="1" />
						</c:when>
						<c:when test="${status.last}">
							<c:set var="color" value="4" />
						</c:when>
						<c:otherwise>
							<c:set var="color" value="" />
						</c:otherwise>
					</c:choose>
					<!-- otherwise를 꼭 써라! -->
					

					<tr class="color${color}">
						<td>${status.index}</td>
						<td>${status.count}</td>
						<td>${i}</td>
						<td>${status.begin}</td>
						<td>${status.end}</td>
					</tr>
				</c:forEach>
			</tbody>

		</table>


	</div>
	<!-- div container -->
	<!-- div container -->



	<div class="container panel panel-info">
		<h3 class="panel-heading">연습문제 6) paramValues</h3>

		<form action="result3.jsp" method="get">
			<fieldset>
				<legend>COLOR</legend>
				<div class="form-group">
					<label for="color">술을 선택하세요.</label> 
					<input type="checkbox" id="ch1" name="al" value="막걸리"> 
					<label for="ch1">막걸리</label> 
					<input type="checkbox" id="ch2" name="al" value="맥주"> 
					<label for="ch1">맥주</label> 
					<input type="checkbox" id="ch3" name="al" value="칵테일"> 
					<label for="ch1">칵테일</label>
				</div>
				<div class="form-group">
					<input type="submit" value="전송" class="form-control btn btn-danger">
				</div>
			</fieldset>
		</form>
	</div>

</body>
</html>