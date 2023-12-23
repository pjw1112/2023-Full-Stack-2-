package com.company.api;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class Kakao_logOut
 */
@WebServlet("/Kakao_logOut")
public class Kakao_logOut extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Kakao_logOut() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		//////////////////////////////////////////////////////////////////////
		// 로그 아웃 
		String access_token = (String)request.getSession().getAttribute("access_token");
		String urlapi = "https://kapi.kakao.com/v1/user/unlink";
		URL url = null;
		HttpURLConnection conn = null;
		BufferedReader br = null;

		url = new URL(urlapi);
		conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Authorization", "Bearer "+access_token);
		conn.setDoOutput(true); //서버한테 전달
		conn.setDoOutput(true);
		
		if (conn.getResponseCode() == 200) {
			System.out.println("정상실행");
			br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		} else {
			System.out.println("비정상실행");
			br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		}

		
		String line = "";
		StringBuffer buffer = new StringBuffer();
		
		while ((line = br.readLine()) != null) {
			buffer.append(line);
		}
		
		String result =  buffer.toString();
		System.out.println("=========로그아웃 완료");
		System.out.println(result);
		request.getSession().invalidate();
		PrintWriter out = response.getWriter();
		out.print("<script>alert('로그아웃 완료'); location.href='9. api/kakao_login.jsp';</script>");
		
		//   JsonObject 내의 모든 키-값 출력
        //   for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
        //      System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
        //   }
        //   } else {
        //   System.out.println("Given JSON is not an object.");
        //   }

		br.close();
		conn.disconnect();

		//request.getRequestDispatcher("success.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
