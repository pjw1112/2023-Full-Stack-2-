package com.company.ajax;

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

import com.company.jsp040.JavaDBManager;

/**
 * Servlet implementation class IdCheck
 */
@WebServlet("/IdCheck")
public class IdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public IdCheck() {
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
		String id = request.getParameter("id");

		System.out.println("welcome //" + id);
		PrintWriter out = response.getWriter();

		int result_int = 0;
		String sesult_str = "<span style='color:blue'>사용가능</span>";

		JavaDBManager db = new JavaDBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		conn = db.getConnection();

		String sql = "select count(*) 'cnt' from userinfo where name=?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rset = pstmt.executeQuery();
			if (rset.next()) {
				result_int = rset.getInt("cnt");
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
		if (result_int == 1) {
			sesult_str = "<span style='color:red'>중복된 아이디 입니다!</span>";
			
		}
		out.print(sesult_str);
		System.out.println(id+"///////"+result_int);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
