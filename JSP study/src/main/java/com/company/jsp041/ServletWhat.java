package com.company.jsp041;

import java.io.*;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletWhat
 */
@WebServlet("/SERVLET1")
public class ServletWhat extends HttpServlet {
	private static final long serialVersionUID = 1L; //직렬화
	int initcnt =1, destroycnt = 1, getcnt =1;  
	@Override
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("....#1. init메서드는 첫 요청에만 호출됨"+initcnt++);
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("....#2. destroy메서드는 마지막에만 호출됨"+destroycnt++);
		
	}
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletWhat() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	PrintWriter out = response.getWriter();
	out.print("................GET-1  +"+getcnt);
	System.out.println("...............GET-1 +"+getcnt++);
	
	out.close();
	
	
	}

	@PostConstruct
	private void initPost() {
		System.out.println("#0. init 전에 ......");
	}
	@PreDestroy
	private void destroyPre() {
		System.out.println("#3. destroy 후에 ......");
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.print("................GET-1");
		out.close();
	}


	
	
	
	
}
