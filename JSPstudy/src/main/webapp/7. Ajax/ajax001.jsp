<%@page import="com.google.gson.JsonParser"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.Gson"%>
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
		<h3 class="panel-heading">AJAX</h3>
		<p class="panel-body">비동기화</p>
		<pre>
1. 서버에 요청
2. 요청한 데이터 (xml, csv, json) 조성
3. 요청한 데이터 일부분만 바뀌기
4. 데이터 요청이 비동기 처리(다른 작업이 가능함)

		</pre>
		<%

		%>
	</div>
	<!-- div container -->
	<!-- div container -->


	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">BASIC</h3>
		<p class="panel-body"></p>
		<pre>
1. [data] - text1.txt
    홍길동
2. button 누르면!
3. .r1 영역에 이름 출력
4. 

		</pre>
		<p>
			<input type="button" id="btn1" value="button" class="btn btn-danger" />
		</p>
		<div class="r1 well">
			<p></p>
			<img alt="" src="" />
		</div>

		<script>
		 $(".r1").hide();
		 $("#btn1").on("click", () => {
			 $(".r1").toggle();
			 
			 $.ajax({
				 url:"../upload/text1.txt", //경로
				 type:"get", //get, post
				 data:"", 
				 dataType:"text", // text, json, xml
				 success: function(text){ 
					 
					$(".r1 p").html(text);   
				 
			        // 이미지 파일 경로
			        var imageUrl = "../upload/cheawon.jpg";

			        // 이미지를 표시할 img 태그에 속성 설정
			        $(".r1 img").attr("src", imageUrl);
				 
				 }, // 성공시 처리
				 
				 error: function(xhr, textStatus, errorThrown){  
					 $(".r1").html(textStatus+"(HTTP-"+xhr.status+")");
					 
				 } // 실패시 처리
				 
			 });
			 
			 
		 });
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->





	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">BASIC2 - DB 연동</h3>
		<p class="panel-body">아작스로 디비 연동하기</p>
		<pre>
1. Ajax001
2. button 누르면!
3. r3 영역에 - 연동성공! 출력
		</pre>
		<p>
			<input type="button" id="btn3" value="db 연동" class="btn btn-danger" />
		</p>
		<div class="r3 well">
			<p></p>
			<img alt="" src="" />
		</div>

		<script>
		 $(".r3").hide();
		 $("#btn3").on("click", () => {
			 $(".r3").toggle();
			 
			 $.ajax({
				 url:"${pageContext.request.contextPath}/Ajax001", //경로
				 type:"get", //get, post
				 data:{"name":"sally","age":"3"}, 
				 dataType:"text", // text, json, xml
				 success: function(data){ 
					 
					 
					 
					 
					 
					$(".r3").html(data)
				 }, // 성공시 처리
				 
				 error: function(xhr, textStatus, errorThrown){  
					 $(".r3").html(textStatus+"(HTTP-"+xhr.status+")");
					 
				 } // 실패시 처리
				 
			 });//end $.ajax
			 
			 
		 });
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->




	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">아작스로 중복 아이디 검사하기</h3>

		<pre>
+----+---------------+------+
| no | name          | age  |
+----+---------------+------+
|  1 | John Doe      |   25 |
|  2 | Jane Smith    |   30 |
|  3 | Bob Johnson   |   22 |
|  4 | Alice Lee     |   38 |
|  5 | Charlie Brown |   35 |
|  6 | David White   |   40 |
|  7 | Eva Miller    |   26 |
|  8 | Frank Wilson  |   32 |
|  9 | Grace Davis   |   29 |
| 10 | Henry Harris  | NULL |
+----+---------------+------+
		</pre>

		<form action="#" id="form" method="post">
			<fieldset>

				<div class="form-group">
					<label for="id">ID : </label> <input type="text" id="id" name="id" class="form-control" />
				</div>


				<div class="form-group">
					<input type="button" value="중복확인" id="submit" class="btn btn-danger ">
				</div>
				<div class="form-group result"></div>
			</fieldset>
		</form>



		<script>
		
		 $("#submit").on("click", () => {
			 if( $("#id").val()=="" ){
				 alert("빈칸입니다.\n 확인해주세요");
				 return false;
			 }
			
			$.ajax({
				 url:"${pageContext.request.contextPath}/IdCheck", //경로
				 type:"get", //get, post
				 data:{"id" : $("#id").val()}, 
				 dataType:"text", // text, json, xml
				 success: function(data){ 
					 $(".result").html(data);
					
				 }, // 성공시 처리
				 
				 error: function(xhr, textStatus, errorThrown){  
					 $(".r3").html(textStatus+"(HTTP-"+xhr.status+")");
					 
				 } // 실패시 처리
				 
			 });//end $.ajax
			 
			 
		 });
		</script>
	</div>
	<!-- div container -->
	<!-- div container -->






	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">아작스 전송 데이터 타입 json 사용해보기</h3>
		<h4>step1. BASIC</h4>
		<pre>
{"name":"jinwoo", "age" : 37, "loc" : "양재동"}
	</pre>
		<%
		Gson gson = new Gson();
		JsonObject job = new JsonObject();
		job.addProperty("name", "jinwoo");
		job.addProperty("age", 37);
		job.addProperty("loc", "양재동");

		String result = gson.toJson(job); //직렬화(?)
		out.print(result);
		%>

		<h4>step2. 위의 파일 파싱하기</h4>
		<%
		JsonParser parser = new JsonParser();
		JsonObject pjob = (JsonObject) parser.parse(result);

		out.print(pjob.get("name").getAsString());
		out.print(pjob.get("age").getAsString());
		out.print(pjob.get("loc").getAsString());
		%>



		<h4>step3. ajax</h4>

		<table class="table table-striped">
			<caption>COFFEE 테이블</caption>
			<thead>
				<tr>
					<th>CNO</th>
					<th>CNAME</th>
					<th>CPRICE</th>
				</tr>
			</thead>
			<tbody class="tbody">


			</tbody>

		</table>





		<script>
		
		 
			
			$.ajax({
				 url:"${pageContext.request.contextPath}/Ajax002", //경로
				 type:"get", //get, post
				 data:"", 
				 dataType:"json", // text, json, xml
				 success: function(data){ 
					 
					 
					 for(let i=0; i<data.length; i++){
						 
						 let tr = $("<tr>");
						 let td1 = $("<td>").html(data[i].cno);
						 let td2 = $("<td>").html(data[i].cname);
						 let td3 = $("<td>").html(data[i].cprice);
						 
						 tr.append(td1).append(td2).append(td3);
						 $(".tbody").append(tr);
						 
					 }
					 
					 
					 
					 
					 console.log(data);
					
				 }, // 성공시 처리
				 
				 error: function(xhr, textStatus, errorThrown){  
										 
				 } // 실패시 처리
				 
			 });//end $.ajax
			 
			 
		
		</script>



	</div>

	<!-- div container -->
	<!-- div container -->







	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">AJAX-XML</h3>
		<p class="panel-body">xml 주고받기</p>
		<pre>
1. 서버에 요청 
	https://openapi.naver.com/v1/search/book.xml
	
2. 요청한 데이터 (xml, csv, json) 조성
	xml, get
	query 검색어. UTF-8
	X-Naver-Client-Id: 9vGnJWj0aCnn1_zIkvLQ 	{애플리케이션 등록 시 발급받은 클라이언트 아이디 값}
    X-Naver-Client-Secret: iagU143APj 			{애플리케이션 등록 시 발급받은 클라이언트 시크릿 값}
    
3. 요청한 데이터 일부분만 바뀌기

4. 데이터 요청이 비동기 처리(다른 작업이 가능함)
</pre>
			<div class="form-group">
				<label for="book">검색할 책 이름 : </label> 
				<input type="text" id="book" name="book" class="form-control"/>
				<input type="button" id="btn123" value="검색" class="btn btn-danger" />
			</div>


		<table class="table table-bordered">
			<caption>NAVER BOOK-XML</caption>
			<thead>
				<tr>
					<th scope="col">title</th>
					<th scope="col">image</th>
					<th scope="col">author</th>

					<th scope="col">description</th>
				</tr>
			</thead>
			<tbody class="jin">

			</tbody>
		</table>


		<script>
		
		$("#btn123").click( function(){
			$(".jin").html(" ");
		$.ajax({
		url:"${pageContext.request.contextPath}/BookSearchNaver", //경로
		type:"get", //get, post
		data: {"book" : $("#book").val()}, 
		dataType:"xml", // text, json, xml
		success: function(data){ 
		
		var items = data.getElementsByTagName("item");
		for (var i = 0; i < items.length; i++) {
		var title_xml = items[i].getElementsByTagName("title")[0].textContent;
		var image_xml = items[i].getElementsByTagName("image")[0].textContent;
		var author_xml = items[i].getElementsByTagName("author")[0].textContent;
		var link_xml = items[i].getElementsByTagName("link")[0].textContent;
		var description_xml = items[i].getElementsByTagName("description")[0].textContent;
		
		var imgTag = $('<img />', {
								      src: image_xml,
								      alt: title_xml,
								      width: '150', // 이미지 폭
								      height: '200' // 이미지 높이
								     });
		
		var aTag = $('<a>', {
								      href: link_xml,
								     });
		aTag.append(imgTag);
		
		let title = $("<td>").html(title_xml);
		let image = $("<td>").append(aTag);
		let author = $("<td>").html(author_xml);
		let link = $("<td>").html(link_xml);
		let description = $("<td>").html(description_xml);
		
		let tr =$("<tr>")
		
		tr.append(title).append(image).append(author).append(description);
		$(".jin").append(tr);
		
		}
		}, // 성공시 처리
		
		error: function(xhr, textStatus, errorThrown){  
							 
		} // 실패시 처리
			 
		});//end $.ajax
		
		});
</script>
	</div>
	<!-- div container -->
	<!-- div container -->




	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">기상청 날씨 정보</h3>
		<p class="panel-body">XML</p>
		<pre>
동네예보(도표) : 서울특별시 강남구 역삼1동
		</pre>

		<table class="table table-bordered">
			<caption>역삼동 3시간별 날씨</caption>
			<thead>
				<tr>
					<th scope="col">시간</th>
					<th scope="col">온도</th>
					<th scope="col">날씨</th>
					<th scope="col">풍향</th>
				</tr>
			</thead>
			<tbody class="jin2">

			</tbody>
		</table>





		<script>
		
		
		$.ajax({
		url:"${pageContext.request.contextPath}/Weather", //경로
		type:"get", //get, post
		data:"", 
		dataType:"xml", // text, json, xml
		success: function(data){ 
		
		var items = data.getElementsByTagName("data");
		for (var i = 0; i < items.length; i++) {
		var hour_xml = items[i].getElementsByTagName("hour")[0].textContent;
		var temp_xml = items[i].getElementsByTagName("temp")[0].textContent;
		var wfKor_xml = items[i].getElementsByTagName("wfKor")[0].textContent;
		var wdKor_xml = items[i].getElementsByTagName("wdKor")[0].textContent;
				 
		let hour = $("<td>").html(hour_xml);
		let temp = $("<td>").html(temp_xml);
		let wfKor = $("<td>").html(wfKor_xml);
		let wdKor = $("<td>").html(wdKor_xml);
		
		let tr =$("<tr>")
		
		tr.append(hour).append(temp).append(wfKor).append(wdKor);
		$(".jin2").append(tr);
		
		}
		}, // 성공시 처리
		
		error: function(xhr, textStatus, errorThrown){  
							 
		} // 실패시 처리
			 
		});//end $.ajax
</script>
	</div>
	<!-- div container -->
	<!-- div container -->


</body>
</html>