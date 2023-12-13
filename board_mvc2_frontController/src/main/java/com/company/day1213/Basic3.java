package com.company.day1213;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

//@WebServlet("*.jinwoo2")
public class Basic3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Basic3() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionTest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		actionTest(request, response);
	}

	protected void actionTest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String path = request.getServletPath();
		if (path.equals("/a.jinwoo2")) {
			System.out.println("A.Controller 이다용");
			request.getRequestDispatcher("/pages/a.jsp").forward(request, response);
		} else if (path.equals("/b.jinwoo2")) {
			System.out.println("B.Controller 이다용");
			request.getRequestDispatcher("/pages/b.jsp").forward(request, response);
		}

		// 1. server.xml 에서 Context 정보 가져오는 거

		try {
			Context initContext = new InitialContext();
			// 2. 환경설정
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			// 3. dataSource
			DataSource ds = (DataSource) envContext.lookup("jdbc/mbasic");
			// 4. connection
			Connection conn;
			conn = ds.getConnection();

			if (conn != null) {
				System.out.print("DBCP 연동 성공!!!");
			} else {
				System.out.print("DBCP 연동 실패...");
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
