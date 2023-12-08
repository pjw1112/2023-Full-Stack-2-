package com.company.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.Inet4Address;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.dbmanager.DBManager;

/**
 * Servlet implementation class Bwrite
 */
@WebServlet("/Bwrite")
public class Bwrite extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Bwrite() {
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
		request.getRequestDispatcher("board/write.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 0. 데이터 받기
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		// 1. db 연동
		DBManager db = new DBManager();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		String sql = "insert into mvcboard2 (bname, bpass, btitle, bcontent,bip) values (?,?,?,?,?)";
		String result = "관리자에게 문의 바랍니다.";
		String result_url = "Blist";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, request.getParameter("bname"));
			pstmt.setString(2, request.getParameter("bpass"));
			pstmt.setString(3, request.getParameter("btitle"));
			pstmt.setString(4, request.getParameter("bcontent"));
			pstmt.setString(5, InetAddress.getLocalHost().getHostAddress());

			// 2. executeUpdate로 sql 구문 실행
			if (pstmt.executeUpdate() > 0) {
				result = "mvcboard2 글쓰기 성공";
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

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

		PrintWriter out = response.getWriter();
		out.print("<script>alert('" + result + "'); location.href='" + result_url + "';</script>");

	}

}
