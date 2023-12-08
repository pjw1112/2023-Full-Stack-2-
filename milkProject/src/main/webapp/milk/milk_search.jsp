<%@page import="com.company.dto.Milk_dto"%>
<%@page import="javax.swing.JOptionPane"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%@include file="../inc/header.jsp" %>
	 
	<div class="container panel panel-warning  per">
		<h3 class="panel-heading">MILK - CRUD( select )</h3>
		<table class="table table-striped">
			<thead>
			<tr> <th scope="col">번호</th> <th scope="col">이름</th> <th scope="col">가격</th> </tr>
			</thead>
			<tbody>
			<%
			
			Milk_dto item = (Milk_dto)request.getAttribute("milk_dto");
			
			out.print("<tr><td>"+item.getMno()+"</td>");
			out.print("<td>"+item.getMname()+"</td>");
			out.print("<td>"+item.getMprice()+"</td></tr>");
			
			%>
			</tbody>
		</table>
		<p><a href="MILK" class="btn btn-danger" >돌아가기</a></p>
 
	</div>
	

	 
<!-- 	END FOOTER		 -->
<!-- 	END FOOTER		 -->
<!-- 	END FOOTER		 -->
<%@include file="/inc/footer.jsp" %>