package com.company.jsp051;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.dbmanager.DBManager;
import com.company.dto.Mvcboard2_dto;
import com.company.jsp040.JavaDBManager;

@WebServlet("/ELBean005")
public class ELBean005 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ELBean005() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 0. 데이터 받기
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String price_range = "";
		int min = 0, max = 0;
		if (request.getParameter("price_range") != null) {
			price_range = request.getParameter("price_range");
		}
		max=3000;
		
		// 1. db 연동
		JavaDBManager db = new JavaDBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = "select * from elitem where price between ? and ?";
		String result = "관리자에게 문의 바랍니다.";
		
		conn = db.getConnection();

		List<ELItem> list = new ArrayList<ELItem>();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, min);
			pstmt.setInt(2, max);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new ELItem(rset.getInt("ino"), 
						rset.getString("name"), 
						rset.getInt("price"),
						rset.getString("description")
							));
				}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			if (rset != null) {
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
		
		request.setAttribute("list", list);
		request.getRequestDispatcher("view2.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
