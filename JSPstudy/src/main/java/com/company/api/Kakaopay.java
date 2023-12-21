package com.company.api;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

/**
 * Servlet implementation class Kakaopay
 */
@WebServlet("*.abs")
public class Kakaopay extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Kakaopay() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ac(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		ac(request, response);
	}

	protected void ac(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String path = request.getServletPath();
		//PrintWriter out = response.getWriter();

		if (path.equals("/hi.abs")) {

			
			//String Client_Id = "9vGnJWj0aCnn1_zIkvLQ";
			//String Client_Secret = "iagU143APj";
//			String query = URLEncoder.encode(book, "UTF-8");
			
			String urlapi = "https://kapi.kakao.com/v1/payment/ready";

			URL url = null;
			HttpURLConnection conn = null;
			BufferedReader br = null;

			url = new URL(urlapi);
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			conn.setRequestProperty("Authorization", "KakaoAK 580f8e73f8a4eee882fdea3a8ae92307");
			conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

			conn.setDoOutput(true); //서버한테 전달
			
			String parameter ="cid=TC0ONETIME" + 
					 "&partner_order_id=partner_order_id" +
					 "&partner_user_id=partner_user_id" +
					 "&item_name=초코파이" + //상품명
					 "&quantity=1" + //상품 수량
					 "&total_amount=2200" + //상품 총액
					 "&vat_amount=200" + // 부가세 금액
					 "&tax_free_amount=0" + // 비과세 금액
					 "&approval_url=http://localhost:8080/JSPstudy/hi2.abs" +   //결제성공시
				     "&fail_url=http://localhost:8080/JSPstudy/fail.kakaoPayB" +         //결제실패시
				     "&cancel_url=http://localhost:8080/JSPstudy/cancle.kakaoPayB";
			
			DataOutputStream out = new DataOutputStream(conn.getOutputStream());
			out.writeBytes(parameter);
			out.close();
			
			
			
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
			System.out.println(buffer);
			String result =  buffer.toString();
			System.out.println("===========================");
			
//			JsonParser parser = new JsonParser();
//			
//			JsonObject jo =  (JsonObject) parser.parse(result);
//			String result2 =  jo.get("next_redirect_pc_url").getAsString();
//			System.out.println(result2);
//			br.close();
//			conn.disconnect();

		}else if (path.equals("/hi2.abs")) {
			
			request.getRequestDispatcher("success.jsp").forward(request, response);
			
		}

	}

}
