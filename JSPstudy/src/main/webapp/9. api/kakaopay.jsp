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
1. resource

2. 결제 요청 준비
	- kakao 개발
	- 도메인 등록
	[내 어플리케이션] > [플랫폼] > [Web]
	POST	https://kapi.kakao.com/v1/payment/ready
	Admin 키	580f8e73f8a4eee882fdea3a8ae92307
	
	>헤더
	Authorization: KakaoAK ${SERVICE_APP_ADMIN_KEY}
	Content-type: application/x-www-form-urlencoded;charset=utf-8

	>본문
	curl -v -X POST "https://kapi.kakao.com/v1/payment/ready" +
	-H "Authorization: KakaoAK admin키 입력부분" +
	 "cid=TC0ONETIME" + 
	 "&partner_order_id=partner_order_id" +
	 "&partner_user_id=partner_user_id" +
	 "&item_name=초코파이" + //상품명
	 "&quantity=1" + //상품 수량
	 "&total_amount=2200" + //상품 총액
	 "&vat_amount=200" + // 부가세 금액
	 "&tax_free_amount=0" + // 비과세 금액
	 "&approval_url=http://localhost:8080/JSPstudy/success.kakaoPayB" +   //결제성공시
     "&fail_url=http://localhost:8080/JSPstudy/fail.kakaoPayB" +         //결제실패시
     "&cancel_url=http://localhost:8080/JSPstudy/cancle.kakaoPayB";   
3. 간편 결제

		</pre>
		
		<p><a href="${pageContext.request.contextPath}/hi.abs"><img alt="" src="images/payment_icon_yellow_medium.png"></a> </p>
		<%

		%>
	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>