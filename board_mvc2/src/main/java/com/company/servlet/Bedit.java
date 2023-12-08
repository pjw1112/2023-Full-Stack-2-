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
import com.company.dto.Mvcboard2_dto;

/**
 * Servlet implementation class Bedit
 */
@WebServlet("/Bedit")
public class Bedit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Bedit() {
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
		int bno = Integer.parseInt(request.getParameter("bno"));

		// 1. db 연동
		DBManager db = new DBManager();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;

//		String sql1 = "update mvcboard2 set bhit=bhit+1 where bno=? ";
		String sql2 = "select * from mvcboard2 where bno = ?;";
		String result = "관리자에게 문의 바랍니다.";
		Mvcboard2_dto mvc2_dto = new Mvcboard2_dto();
		conn = db.getConnection();

		try {
//			조회 수 +1
//			pstmt = conn.prepareStatement(sql1);
//			pstmt.setInt(1, bno);

//			if (pstmt.executeUpdate() > 0) {
//			pstmt.close();

			// 실제 내용 가져오기
			pstmt = conn.prepareStatement(sql2);
			pstmt.setInt(1, bno);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				mvc2_dto = new Mvcboard2_dto(rset.getInt("bno"), rset.getString("bname"), rset.getString("bpass"),
						rset.getString("btitle"), rset.getString("bcontent"), rset.getString("bdate"),
						rset.getInt("bhit"), rset.getString("bip"));
			}
//					}
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
		System.out.println("........." + mvc2_dto);
		request.setAttribute("mvc2_dto", mvc2_dto);
		request.getRequestDispatcher("board/edit.jsp").forward(request, response);

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
		int bno = Integer.parseInt(request.getParameter("bno"));
		String bpass = request.getParameter("bpass");
		String btitle = request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		
		String result="관리자에게 문의바랍니다.";
		String result_url="Bedit?bno=";
		String sql = "update mvcboard2 set btitle = ?, bcontent = ? where bno = ? and bpass = ?";
		
		DBManager db = new DBManager();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, btitle);
			pstmt.setString(2, bcontent);
			pstmt.setInt(3, bno);
			pstmt.setString(4, bpass);
			if(pstmt.executeUpdate()>0) {
				result = "수정성공!";
				result_url="Bdetail?bno=";
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
		out.print("<script>alert('" + result + "'); location.href='" + result_url +bno+ "';</script>");


	}

}
