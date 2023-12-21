package com.company.api;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class JsoupController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public JsoupController() {
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
		action(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		action(request, response);
	}

	protected void action(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.print("액션으로 진입");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		PrintWriter out = response.getWriter();
		String path = request.getServletPath();

		if (path.equals("/basic1.jsoup")) {
			
			Jsoup_basic jb = new Jsoup_basic();
			out.println(jb.jsoup());
			
		} else if (path.equals("/basic2.jsoup")) {

			Jsoup_basic2 jb = new Jsoup_basic2();
			out.println(jb.jsoup());
						
		} else if (path.equals("/basic3.jsoup")) {

			request.getRequestDispatcher("Myse").forward(request, response);
			return;
		}

		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
