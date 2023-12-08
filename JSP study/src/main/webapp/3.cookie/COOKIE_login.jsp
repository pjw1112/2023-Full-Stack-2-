<%@page import="java.awt.event.ItemEvent"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@include file="/inc/header_cookie.jsp"%>

<div class="container  panel jin">
	<h3 class="panel-heading">쿠키 로그인</h3>
	<p class="well">
		<img class="img" alt="" src="images/login.png">
	</p>
	<%
	String remember = "";
	String id = "";
	String cookie = request.getHeader("Cookie");
	
	if(cookie != null){
		Cookie[] cookies = request.getCookies();
		for(Cookie cook : cookies){
			if(cook.getName().equals("remember")){
				remember = cook.getValue();
			}
			if(cook.getName().equals("id")){
				id = cook.getValue();
			}
			
			
		}
	}
	
	%>
	
	
	<form action="COOKIE_save.jsp" method="post">

		<fieldset>

			<div class="form-group">
				<label for="id">ID : </label> 
				<input type="text" id="id" name="id" class="form-control" 
				<% if(remember.equals("remember")){ %>
				value="<%=id %>"
				<% }%>
				 />
			</div>
			<div class="form-group">
				<label for="pass">PASSWORD : </label> 
				<input type="text" id="pass" name="pass" class="form-control" />
			</div>
			<div class="form-group">
				 
				<input type="checkbox" id="remember" name="remember" value="ck"
				<% if(remember.equals("remember")){ %> checked <% } %> />
			<label for="remember">아이디기억하기</label>
			</div>
			<div class="form-group">
				<input type="submit" value="로그인" class="btn btn-danger ">
			</div>

		</fieldset>

	</form>




</div>


<!-- div container -->
<!-- div container -->







<%@include file="/inc/footer_cookie.jsp"%>


