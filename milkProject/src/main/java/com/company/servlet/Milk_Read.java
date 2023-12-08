package com.company.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.dbmanager.DBManager;
import com.company.dto.Milk_dto;

/**
 * Servlet implementation class Milk_Read
 */
@WebServlet("/Milk_Read")
public class Milk_Read extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Milk_Read() {
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

		// 0. 데이터 받기
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int mno = Integer.parseInt(request.getParameter("mno"));

		// 1. db 연동
		DBManager db = new DBManager();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Milk_dto milk_dto = null;

		String sql = "select * from milk where mno=?";
		String result = "관리자에게 문의 바랍니다.";
		String result_url = "MILK";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, mno);
			rset = pstmt.executeQuery(); // 2. executeQuerye로 sql 구문 실행

			while (rset.next()) {
				milk_dto = new Milk_dto(rset.getInt("mno"),rset.getString("mname"),rset.getInt("mprice"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			
			if(rset != null) {
				try {
					rset.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}

		}

		request.setAttribute("milk_dto", milk_dto);
		request.getRequestDispatcher("milk/milk_search.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

//		PrintWriter out = response.getWriter();
//		out.print("<script>alert('" + result + "'); location.href='" + result_url + "';</script>");

	}

}
