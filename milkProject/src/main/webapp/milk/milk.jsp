<%@page import="java.util.*"%>
<%@page import="com.company.dto.Milk_dto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="../inc/header.jsp" %>
<!-- 	END HEADER		 -->
<!-- 	END HEADER		 --> 

<div class="container per">
	<!-- ■Q4. TABLE - 웹표준맞춰서 MILK 테이블 추가    -->
	<!-- ■Q4. TABLE - 웹표준맞춰서 MILK 테이블 추가    --> 
	<h3 class="panel-heading">WEBSTANDARD+TABLE</h3>
	<table class="table table-striped">
		<caption>MILKS</caption>
		<thead>
			<tr><th scope="col">MNO</th>
			<th scope="col">MNAME</th>
			<th scope="col">MPRICE</th></tr>
		</thead>
		<tbody>
		<%@page import="java.sql.*"%>
		<%
		List<Milk_dto> milk_list = new ArrayList<Milk_dto>();
		
		milk_list = (ArrayList<Milk_dto>)request.getAttribute("milk_list"); //request.getAttribute 는 Object를 리턴함
		
		Milk_dto[] m_arr = milk_list.toArray(new Milk_dto[0]);
		
		for(int i = 0; i<m_arr.length;i++){
			out.print("<tr><td>"+m_arr[i].getMno()+"</td>" );
			out.print("<td>"+m_arr[i].getMname()+"</td>" );
			out.print("<td>"+ m_arr[i].getMprice()+"</td></tr>" );
		}
		
		%> 
		 
		 
		 
		</tbody>
	</table>
	
	<!-- 	CREATE		 -->
	<!-- 	CREATE		 -->
	<!-- ■Q5. CREATE-INSERT    -->
	<!-- ■Q5. CREATE-INSERT    -->
	<h3 class="panel-heading">MILK 데이터 삽입</h3>
	<form action="Milk_Create"  method="post"  id="milkInsert">
		<fieldset>
		<legend>CREATE</legend>
		<div class="form-group">
			<label for="mname">우유이름</label>
			<input type="text"  id="mname"  name="mname"  class="form-control"/>
		</div>
		<div class="form-group">
			<label for="mprice">우유가격</label>
			<input type="text"  id="mprice"  name="mprice" class="form-control"/>
		</div>
		<div class="form-group"> 
			<input type="submit" value="MILK 데이터 삽입"  
				class="btn btn-danger"  title="milk 데이터삽입"
			  />
		</div>
		</fieldset>
	</form>
	<script>
	$(function(){
		$("#milkInsert").on("submit" , function(){
			if( $("#mname").val()=="" ){ 
				alert("빈칸입니다. \n확인해주세요");
				$("#mname").focus();
				return false;
			}
			if( $("#mprice").val()=="" ){ 
				alert("빈칸입니다. \n확인해주세요");
				$("#mprice").focus();
				return false;
			}
		});
	});
	</script>
	
	<!-- ■Q6. READ    -->
	<!-- ■Q6. READ    -->
	<h3 class="panel-heading">MILK 데이터 검색</h3>
	<form action="Milk_Read"  method="get"  id="milkSearch">
		<fieldset>
		<legend>READ</legend>
		<div class="form-group">
			<label for="mno">우유번호</label>
			<input type="text"  id="mno"  name="mno"  class="form-control"/>
		</div> 
		<div class="form-group"> 
			<input type="submit" value="MILK 데이터 검색"  
				class="btn btn-danger"  title="milk 데이터 검색"
			  />
		</div>
		</fieldset>
	</form>
	<script>
	$(function(){
		$("#milkSearch").on("submit" , function(){
			if( $("#mno").val()=="" ){ 
				alert("빈칸입니다. \n확인해주세요");
				$("#mno").focus();
				return false;
			} 
		});
	});
	</script>
	
	<!-- 	■Q7. UPDATE		 -->
	<!-- 	■Q7. UPDATE		 -->
	<h3 class="panel-heading">MILK 데이터 수정</h3>
	<form action="Milk_Update"  method="post"  id="milkUpdate">
		<fieldset>
		<legend>UPDATE</legend>
		<div class="form-group">
			<label for="mno3">우유번호</label>
			<input type="text"  id="mno3"  name="mno"  class="form-control"/>
		</div>
		<div class="form-group">
			<label for="mprice3">우유가격</label>
			<input type="text"  id="mprice3"  name="mprice" class="form-control"/>
		</div>
		<div class="form-group"> 
			<input type="submit" value="MILK 데이터 수정"  
				class="btn btn-danger"  title="milk 데이터 수정"
			  />
		</div>
		</fieldset>
	</form>
	<script>
	$(function(){
		$("#milkUpdate").on("submit" , function(){
			if( $("#mno3").val()=="" ){ 
				alert("빈칸입니다. \n확인해주세요");
				$("#mno3").focus();
				return false;
			}
			if( $("#mprice3").val()=="" ){ 
				alert("빈칸입니다. \n확인해주세요");
				$("#mprice3").focus();
				return false;
			}
		});
	});
	</script>	
	
	

	<!-- 	■Q8. DELETE		 -->
	<!-- 	■Q8. DELETE		 -->
	<h3 class="panel-heading">MILK 데이터 삭제</h3>
	<form action="Milk_Delete"  method="get"  id="milkDelete">
		<fieldset>
		<legend>DELETE</legend>
		<div class="form-group">
			<label for="mno4">우유번호</label>
			<input type="text"  id="mno4"  name="mno"  class="form-control"/>
		</div> 
		<div class="form-group"> 
			<input type="submit" value="MILK 데이터 삭제"  
				class="btn btn-danger"  title="milk 데이터 삭제"
			  />
		</div>
		</fieldset>
	</form>
	<script>
	$(function(){
		$("#milkDelete").on("submit" , function(){
			if( $("#mno4").val()=="" ){ 
				alert("빈칸입니다. \n확인해주세요");
				$("#mno4").focus();
				return false;
			} 
		});
	});
	</script>
	
	
</div>
<!-- end container --> 

 
<!-- 	END FOOTER		 -->
<!-- 	END FOOTER		 -->
<!-- 	END FOOTER		 -->
<%@include file="/inc/footer.jsp" %>
