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

@WebServlet("*.test")
public class Basic extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Basic() {
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
		System.out.println("1 : " + request.getRequestURL());
		System.out.println("2 : " + request.getRequestURI());
		System.out.println("3 : " + request.getContextPath());
		System.out.println("4 : " + request.getServletPath());

		String path = request.getServletPath();
		if (path.equals("/a.test")) {
			System.out.println("A.Controller 이다용");
		} else if (path.equals("/b.test")) {
			System.out.println("B.Controller 이다용");
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
