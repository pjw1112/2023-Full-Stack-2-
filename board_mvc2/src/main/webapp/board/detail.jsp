<%@page import="com.company.dto.Mvcboard2_dto"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="../inc/header.jsp" %>
<%@page import="java.sql.*"%>
<%

request.setCharacterEncoding("UTF-8");
Mvcboard2_dto item = (Mvcboard2_dto)request.getAttribute("mvc2_dto");
%>

<div class="container"  style="margin-top:5%; min-height:500px">
	<h3>MULTIBOARD 상세보기</h3> 					
	<div class="panel">
	  <div  class="panel-body"> 
	  		<span class="glyphicon glyphicon-plus"><%=item.getBhit() %></span>
	  		<p></p>
	</div>	
	</div>	
	<div class="panel">
	  <div  class="panel-body">
	  		<span class="glyphicon glyphicon-plus"><%=item.getBname() %></span> 
			<p></p>
		</div>
	</div>				
	<div class="panel">
	  <div  class="panel-body">
	  	<span class="glyphicon glyphicon-plus"><%=item.getTitle() %></span> 
	     <p></p>
	  </div>	
	</div>
	<div class="panel"  >
	  <div  class="panel-body">
	  	<span class="glyphicon glyphicon-plus"><%=item.getBcontent() %></span>
	  	<p></p>
	  </div> 
	</div>	
	<div class="text-right"    >
		 <a href="Bedit?bno=<%=item.getBno()%>" class="btn btn-danger" >수정</a> 
		 <a href="Bdelete?bno=<%=item.getBno()%>"  class="btn btn-danger" >삭제</a>    
		 <a href="Blist"  class="btn btn-info" >목록보기</a> 
	</div>						 
</div>	
<%@ include file="../inc/footer.jsp" %>
