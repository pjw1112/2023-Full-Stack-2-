package com.company.api;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet implementation class Kakao_login
 */
@WebServlet("/Kakao_login2")
public class Kakao_login2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Kakao_login2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("서블릿2진입");
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String access_token = (String)request.getAttribute("access_token");
		
		//////////////////////////////////////////////////////////////////////
		// 사용자 정보 받기
		
		String urlapi = "https://kapi.kakao.com/v2/user/me";
		URL url = null;
		HttpURLConnection conn = null;
		BufferedReader br = null;

		url = new URL(urlapi);
		conn = (HttpURLConnection) url.openConnection();
		conn.setRequestMethod("POST");
		conn.setRequestProperty("Authorization","Bearer "+ access_token);
		conn.setRequestProperty("Content-type", "x-www-form-urlencoded;charset=utf-8");
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
		System.out.println("===========================");
		System.out.println("로긴서블릿2페이지 결과 : "+result);
        JsonParser parser = new JsonParser();
        
        JsonObject obj = (JsonObject)parser.parse(result);
		System.out.println("사용자 정보 요청 성공 >");
           for (Map.Entry<String, JsonElement> entry : obj.entrySet()) {
              System.out.println( entry.getKey() + " : " + entry.getValue());
           }
           System.out.println();
        JsonObject obj2= obj.get("properties").getAsJsonObject();
        System.out.println("properties 항목 >>");
        for (Map.Entry<String, JsonElement> entry : obj2.entrySet()) {
           System.out.println( entry.getKey() + " : " + entry.getValue());
        }
            System.out.println();
            
        JsonObject obj3= obj.get("kakao_account").getAsJsonObject();
        System.out.println("kakao_account 항목 >>");
           request.setAttribute("email", obj3.get("email").toString());
            
        JsonObject obj4= obj3.get("profile").getAsJsonObject();    
            
        PrintWriter out = response.getWriter();
        for (Map.Entry<String, JsonElement> entry : obj4.entrySet()) {
            out.println( entry.getKey() + " : " + entry.getValue()+"<br>");
            request.setAttribute(entry.getKey(), entry.getValue());
         } 
        
          out.print("프로필 이미지 : <img src="+ obj4.get("profile_image_url").toString() +"><br>");  
          out.print("썸네일 이미지 : <img src="+ obj4.get("thumbnail_image_url").toString() +">");  
          
        
         //   JsonObject 내의 모든 키-값 출력
         //   for (Map.Entry<String, JsonElement> entry : jsonObject.entrySet()) {
         //      System.out.println("Key: " + entry.getKey() + ", Value: " + entry.getValue());
         //   }
         //   } else {
         //   System.out.println("Given JSON is not an object.");
         //   }

		br.close();
		conn.disconnect();

	
		
		request.getRequestDispatcher("9. api/kakao_login_redirect.jsp").forward(request, response);
		

		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
