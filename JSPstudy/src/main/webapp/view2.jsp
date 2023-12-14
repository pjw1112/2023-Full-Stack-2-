<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.company.jsp051.ELItem"%>
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
<script type="text/javascript">
	if ('${result}' == 'success') {
		alert("삽입 성공");
	}
</script>
</head>
<body>
	<!-- div container -->
	<!-- div container -->
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">표현식을 이용한 출력방법</h3>

		<table class="table table-striped">
			<caption>item</caption>
			<thead>
				<tr>
					<td>INO</td>
					<td>INAME</td>
					<td>IPRICE</td>
					<td>IDESCRIPTION</td>
				</tr>
			</thead>
			<tbody>
<<<<<<< HEAD
			
<%
 List<ELItem> list = (ArrayList<ELItem>)request.getAttribute("list");
for(ELItem item : list){
	 out.print("<tr><td>"+item.getIno()+"</td>");
	 out.print("<td>"+item.getName()+"</td>");
	 out.print("<td>"+item.getPrice()+"</td>");
	 out.print("<td>"+item.getDescription()+"</td></tr>");
 }

%>
			

				
					
				
=======
				<tr>
					<%
					List<ELItem> list = (List<ELItem>) request.getAttribute("list");
					Iterator<ELItem> it = list.iterator();
					while (it.hasNext()) {
						out.print("<td>" + it.next().getIno() + "</td>");
						out.print("<td>" + it.next().getName() + "</td>");
						out.print("<td>" + it.next().getPrice() + "</td>");
						out.print("<td>" + it.next().getDescription() + "</td>");
					}
					%>
				</tr>
>>>>>>> 351eeb4bdf8bd9cd981b9a39714a9b3f1b0148b1

			</tbody>

		</table>

	</div>
	<!-- div container -->
	<!-- div container -->

</body>
</html>