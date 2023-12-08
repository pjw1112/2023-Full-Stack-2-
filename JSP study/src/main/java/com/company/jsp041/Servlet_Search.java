package com.company.jsp041;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

import javax.servlet.*;

/**
 * Servlet implementation class Servlet_Search
 */
@WebServlet("/Servlet_Search")
public class Servlet_Search extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Servlet_Search() {
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
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String search = URLEncoder.encode(request.getParameter("query"),"UTF-8");//한글 인코딩 안하면 sendredirect가 먹질 않음
		PrintWriter out = response.getWriter();
		out.print("................GET-1  +"+search);
		response.sendRedirect("jsp042.jsp?query="+search);
		
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String search = request.getParameter("query");
		PrintWriter out = response.getWriter();
		out.print("................GET-1  +"+search);
		
		
		out.close();
	}

}
