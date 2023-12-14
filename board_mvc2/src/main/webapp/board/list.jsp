
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include  file="../inc/header.jsp" %>
<!--  END HEADER -->
<!--  END HEADER -->
<!--  END HEADER -->

<div class="container"   style="margin-top:5%; min-height:500px">
	<h3>MULTIBOARD</h3>
	<table  class="table table-striped">
		<caption>MULTIBOARD - MVC1</caption>
		<thead>
			<tr><th scope="col">NO</th><th scope="col">TITLE</th>
			      <th scope="col">WRITER</th><th scope="col">DATE</th><th scope="col">HIT</th></tr>
		</thead>
		<tbody>
		<%@page import="java.sql.*"%>
		<%@page import="com.company.dto.Mvcboard2_dto"%>
		<%@page import="java.util.ArrayList"%>
		<%@page import="java.util.List"%>
		<%
		

				List<Mvcboard2_dto> mvc2_list = new ArrayList<Mvcboard2_dto>();
				
				mvc2_list = (ArrayList<Mvcboard2_dto>)request.getAttribute("mvc2_list"); //request.getAttribute 는 Object를 리턴함
				
				Mvcboard2_dto[] m_arr = mvc2_list.toArray(new Mvcboard2_dto[0]);
				
				for(int i = 0; i<m_arr.length;i++){
			out.print("<tr><td>"+m_arr[i].getBno()+"</td>" );
			out.print("<td><a href='Bdetail?bno="+m_arr[i].getBno()+"'>"+m_arr[i].getTitle()+"</a></td>" );
			out.print("<td>"+ m_arr[i].getBname()+"</td>" );
			out.print("<td>"+m_arr[i].getBdate()+"</td>" );
			out.print("<td>"+m_arr[i].getBhit()+"</td></tr>" );
				}
		%> 
		
<!-- 			<tr><td>1</td><td><a href="detail.jsp">첫번재 글쓰기입니다.</a></td>
				  <td>ADMIN</td><td>2020-01-02 13:14:30</td><td>1</td></tr> -->
	
		</tbody>
	</table>
	<p  class="text-right"><a href="Bwrite"   class="btn btn-danger">글쓰기</a></p>
</div>

<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<!-- END FOOTER -->
<%@ include  file="../inc/footer.jsp" %>