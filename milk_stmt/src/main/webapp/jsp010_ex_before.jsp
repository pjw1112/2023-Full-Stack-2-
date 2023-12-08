<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.IfStatement"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Out"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
.wordWrap {
	word-wrap: break-word; /* 모든 단어 단위로 줄바꿈 */
	/* 또는 */
	overflow-wrap: break-word; /* 모든 단어 단위로 줄바꿈 */
}
</style>


</head>
<body>
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">Q1. 페이지지시자 -삽입 : CTRL + SPACE BAR</h3>
		<p class="well">
			Q1. 배열을 사용하려함. 코드가 가능하게 페이지지시자를 삽입하세요! <br /> ㅁ출력된 화면: [10, 20, 30]
		</p>
		<%
		int[] aa = { 10, 20, 30 };
		%>

		<%
		out.print("<p>" + Arrays.toString(aa) + "<p>");
		%>
	</div>
	<!-- container END -->

	<!-- 										 -->
	<!-- 										 -->
	<!-- 										 -->

	<div class="container   panel panel-warning">
		<h3 class="panel-heading">Q1. 스크릿트립사용법1 - 선언문</h3>
		<p class="well">
			Q2. choco milk 가 출력되도록 getMilk() 함수를 구현하세요 <br /> ㅁ출력된 화면: choco milk <br /> &lt;%=getMilk()
			%&gt; <br />
		</p>
		<%!public String getMilk() {
		return "choco milk";
	}%>
		<%
		out.print(getMilk());
		%>


	</div>
	<!-- container END -->

	<!-- 										 -->
	<!-- 										 -->
	<!-- 										 -->
	<div class="container   panel panel-warning">
		<h3 class="panel-heading">Q3. 스크릿트립사용법2 - 선언문 + 제어문</h3>
		<p class="well">
			Q3. 1-1 int num1=1 선언 <br /> 1-2 1이면 1출력/1이 아니면 1이 아니다 출력 <br /> 출력된 화면 : 1이다 <br /> --
			특정고객에게만 버튼이 보이게 만들기 <br /> [버튼] : 1이라면 네이버로 링크걸린 버튼보이게 만들기 <br />
		</p>
		<%!int num1 = 1;%>
		<%
		if (num1 == 1) {
			out.print("1이다<br>");
			out.print("<input type=\"button\" value=\"눌러랑\">");

		} else {
			out.print("1이 아니다");
		}
		%>
		<%
		if (num1 == 1) {
		%>
		<p>
			<a href="https://www.naver.com" title="네이버링크" class="btn btn-success">네이버이동</a>
		</p>
		<%
		}
		%>

		<%
		if (num1 == 1) {
			out.print("<p><a href=\"https://www.naver.com\" title=\"네이버링크\" class=\"btn btn-success\">네이버이동</a></p>");
		}
		%>



	</div>
	<!-- container END -->


	<!-- 										 -->
	<!-- 										 -->
	<!-- 										 -->
	<%@page import="java.util.Calendar"%>
	<%@page import="java.text.SimpleDateFormat"%>
	<div class="container    panel panel-warning">
		<h3 class="panel-heading">Q4. 스크립틀릿 - timer</h3>
		<p class="well">
			Q4. 스크립틀릿을 이용하여 12이후이면 <br /> - PM **시 / 12시 이전이면 AM**시로 출력가능하세 만들기
		</p>

		<%
		Calendar cal = Calendar.getInstance();
		int time = cal.get(Calendar.HOUR_OF_DAY);
		if (time < 12) {
			out.print("AM&nbsp" + time + "시");
		} else {
			out.print("PM&nbsp" + time + "시");
			
		}
		out.print("<br>");
		String now = new SimpleDateFormat("hh:mm:ss a").format(cal.getTime());
		out.print(now);
		%>



	</div>
	<!-- container END -->


	<!-- 										 -->
	<!-- 										 -->
	<!-- 										 -->

	<div class="container     panel panel-warning">
		<h3 class="panel-heading">Q5. 아래 표현식이 가능하게 1~100까지의 함수 sum()</h3>
		<p class="well">
			Q5. 아래 표현식이 가능하게 1~100까지 더해주는 의 함수 sum()을 구현하세요 <br /> ㅁ 출력된 화면 <br /> 1부터 100까지의 합은 5050입니다. <br />
			1부터 100까지의 합에 3을 곱하면 15150이 됩니다. <br /> 1부터 100까지의 합을 1000으로 나누면 5.05가 됩니다.
		</p>
		<div class="wordWrap">
			<%
			int sum = 0;
			for (int i = 0; i < 100; i++) {
				out.print(i + 1);

				if (i != 99) {
					sum += i + 1;
					out.print("&nbsp+&nbsp");
				} else {
					out.print("&nbsp=&nbsp");
					out.print(sum=sum + i + 1);
				}

			}
			out.print("<br>");
			
			%>

		<%="*3한 값은 "+(sum*3)+"&nbsp이 됩니다<br>" %>
		<%="/1000한 값은 "+(double)(sum/1000.0)+"&nbsp이 됩니다" %>
		
		</div>


	</div>
	<!-- container END -->








</body>
</html>
