<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container  panel panel-warning">
		<h3 class="panel-heading">쿠키 로긴 세이브</h3>
		<%
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String remember = request.getParameter("remember");
		
		if (remember != null) {
			out.print(remember);
				
			// 1. 쿠키객체 선언 및 이름값 저장
			Cookie cookie_id = new Cookie("id", id);
			Cookie cookie_re = new Cookie("remember", "remember");
			// 2. 쿠키 유효기간 설정
			cookie_id.setMaxAge(60); //60초  => 1분
			cookie_re.setMaxAge(60); //60초  => 1분

			// 3. response에 탑재 설정
			response.addCookie(cookie_id);
			response.addCookie(cookie_re);
			
			session.setAttribute("id", id);
			session.setAttribute("pass", pass);

		}else{
			String cookie = request.getHeader("Cookie");
			if(cookie != null){
				Cookie[] cookies = request.getCookies();
				for(int i=0; i<cookies.length ;i++){
				if(	cookies[i].getName().equals("remember") ||cookies[i].getName().equals("id") ){
					cookies[i].setMaxAge(0);
					response.addCookie(cookies[i]);
					
					}
					
					
				}
			}
		}

		

		out.println("<meta http-equiv='refresh'  content='0.3;url=COOKIE_login.jsp'/>");
		%>
	</div>
</body>
</html>