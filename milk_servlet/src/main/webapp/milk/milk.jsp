<%@page import="java.sql.*"%>
<%@page  language="java"  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<!-- 			 -->
	<!-- 			 -->
<%@include file="/inc/header.jsp" %>
<%


%>

 	<div class="container  panel panel-warning">
 		<h3  class="panel-heading">MILKS - TABLE</h3>
 		<table  class="table table-striped">
 			<caption>MILKS-TABLE</caption>
 			<thead><tr><th  scope="col">MNO</th> <th  scope="col">MNAME</th><th  scope="col">MPRICE</th></tr></thead>
 			<tbody> 
  		<c:forEach var="dto" varStatus="status" items="${list}">
			<tr>
			<td>${dto.mno}</td>
			<td>${dto.mname}</td>
			<td>${dto.mprice}</td>
			</tr>
		</c:forEach>
 			</tbody>
 		</table>
 	</div>	
 	<!-- 					 -->
 	<!-- 					 -->
 	<!-- 					 -->
 	<!-- 					 -->
 	
 	
 	<div class="container  panel panel-warning">
 		<h3  class="panel-heading">WEB STANDARD - MILK - CRUD( insert ) </h3>
	   <form method="post" 
	   		 action="${pageContext.request.contextPath}/insert.milk"   id="milkInsert">
	   	  <fieldset> 
	   	  <legend>우유입력폼</legend>
		   	<div class="form-group"> 
		   		<label for="mname4">우유이름</label>
		   		<input type="text" name="mname"   id="mname4"   class="form-control"/>
		   	</div>	
		    <div class="form-group"> 
		   		<label for="mprice4">우유값</label>
		   		<input type="number" name="mprice"   id="mprice4"   class="form-control"/>
		   	</div>	  		
		   	<div class="form-group">
		   		<input type="submit" value="전송"  class="btn  btn-danger"/>
		   	</div>
		   </fieldset>		
	   </form> 
	      <script>
		   	$(document).ready(function(){
		   		$("#milkInsert").submit(function(){
		   		    if(	$("#milkInsert   #mname4").val() == "" ){
		   		    	alert("빈칸입니다.\n확인해주세요");
		   		    	$("#milkInsert   #mname4").focus();
		   		    	return false;
		   		    }
		   		    if(	$("#milkInsert   #mprice4").val() == "" ){
		   		    	alert("빈칸입니다.\n확인해주세요");
		   		    	$("#milkInsert   #mprice4").focus();
		   		    	return false;
		   		    }	    
		   		});
		   	});
		   </script>   
 	</div><!--  end container  -->
 	
	<div class="container  panel panel-warning">
		<h3 class="panel-heading"> WEB STANDARD - MILK - CRUD( read ) 
											 MILKS 검색  : 확인할 우유가격의  번호를 입력해주세요</h3>
	   <form  method="get" action="${pageContext.request.contextPath}/detail.milk" id="milkReader">
		  <fieldset>
		  <legend>MILKS 검색  </legend>	
		   	<div class="form-group"> 
		   		<label for="mno">우유번호 입력</label>
		   		<input type="text" name="mno"   id="mno"   class="form-control"/>
		   	</div>		
		   	<div class="form-group"> <input type="submit" value="전송"  class="btn  btn-danger"/> </div>
		  </fieldset> 	
	   </form>
	   
	   <script>
	   	$(document).ready(function(){
	   		$("#milkReader").submit(function(){
	   		    if(	$("#milkReader   #mno").val() == "" ){
	   		    	alert("빈칸입니다.\n확인해주세요");
	   		    	$("#milkReader   #mno").focus();
	   		    	return false;
	   		    }
	   		});
	   	});
	   </script>   
	   
	</div><!-- container END -->   

	<!--   							  -->  
	<!--   							  -->   
	<div class="container  panel panel-warning">
		<h3 class="panel-heading"> WEB STANDARD - MILK - CRUD( update ) MILKS 수정 : 우유값인상</h3>   		
	   <form method="post" 
	   		 action="${pageContext.request.contextPath}/edit.milk"   id="milkModify">
	   	  <fieldset> 
	   	  <legend>우유수정폼</legend>
		   	<div class="form-group"> 
		   		<label for="mno2">우유번호 입력</label>
		   		<input type="text" name="mno"   id="mno2"   class="form-control"/>
		   	</div>	
		    <div class="form-group"> 
		   		<label for="mprice2">우유값 입력</label>
		   		<input type="number" name="mprice"   id="mprice2"   class="form-control"/>
		   	</div>	  		
		   	<div class="form-group">
		   		<input type="submit" value="전송"  class="btn  btn-danger"/>
		   	</div>
		   </fieldset>		
	   </form> 
	   <script>
	   	$(document).ready(function(){
	   		$("#milkModify").submit(function(){
	   		    if(	$("#milkModify   #mno2").val() == "" ){
	   		    	alert("빈칸입니다.\n확인해주세요");
	   		    	$("#milkModify   #mno2").focus();
	   		    	return false;
	   		    }
	   		    
	   		    if(	$("#milkModify   #mprice2").val() == "" ){
	   		    	alert("빈칸입니다.\n확인해주세요");
	   		    	$("#milkModify   #mprice2").focus();
	   		    	return false;
	   		    }   		    
	   		});
	   	});
	   </script>         
	</div><!-- container END --> 
  
	<!--   							  -->  
	<!--   							  -->   
	<div class="container  panel panel-warning">
		<h3 class="panel-heading"> WEB STANDARD - MILK - CRUD( delete ) MILKS 삭제  :  삭제할 번호를 입력해주세요</h3>
	   <form method="get" action="${pageContext.request.contextPath}/delete.milk"  id="milkDelete">   	  
	   	  <fieldset> 
	   	  <legend>우유삭제폼</legend>
		   	<div class="form-group"> 
		   		<label for="mno3">우유번호 입력</label>
		   		<input type="text" name="mno"   id="mno3"   class="form-control"/>
		   	</div>		
		   	<div class="form-group">
		   		<input type="submit" value="전송"  class="btn  btn-danger"/>
		   	</div>
	   	  </fieldset> 	   	
	   </form>   
	   <script>
	   	$(document).ready(function(){
	   		$("#milkDelete").submit(function(){
	   		    if(	$("#milkDelete   #mno3").val() == "" ){
	   		    	alert("빈칸입니다.\n확인해주세요");
	   		    	$("#milkDelete   #mno3").focus();
	   		    	return false;
	   		    }
	   		});
	   	});
	   </script>       
	</div><!-- container END -->  
      
 	

<%@include file="/inc/footer.jsp" %>