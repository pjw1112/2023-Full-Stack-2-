<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/inc/header.jsp"%>

<div class="container  panel jin">
	<h3 class="panel-heading">세션 로그인</h3>
	<p class="well">
		<img class="img" alt="" src="images/login.png">
	</p>
	<form action="session_save.jsp" method="post">

		<fieldset>

			<div class="form-group">
				<label for="id">ID : </label> 
				<input type="text" id="id" name="id" class="form-control" />
			</div>
			<div class="form-group">
				<label for="pass">PASSWORD : </label> 
				<input type="text" id="pass" name="pass" class="form-control" />
			</div>
			<div class="form-group">
				 
				<input type="checkbox" id="remember" name="remember"  />
			<label for="remember">아이디기억하기</label>
			</div>
			<div class="form-group">
				<input type="submit" value="로그인" class="btn btn-danger ">
			</div>

		</fieldset>

	</form>

 <script>
    function saveFormData() {
      // 폼 데이터 가져오기
      var username = document.getElementById('username').value;
      var email = document.getElementById('email').value;

      // 세션 스토리지에 데이터 저장
      sessionStorage.setItem('username', username);
      sessionStorage.setItem('email', email);

      // 확인 메시지
      alert('Form data saved to session storage.');
    }
  </script>


</div>


<!-- div container -->
<!-- div container -->







<%@include file="/inc/footer.jsp"%>


