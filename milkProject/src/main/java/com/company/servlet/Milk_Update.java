package com.company.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
 * Servlet implementation class Milk_Update
 */
@WebServlet("/Milk_Update")
public class Milk_Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Milk_Update() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		// 0. 데이터 받기
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		int mno = Integer.parseInt(request.getParameter("mno"));
		int mprice = Integer.parseInt(request.getParameter("mprice"));
		

		// 1. db 연동
		DBManager db = new DBManager();
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		String sql = "update milk set mprice=? where mno=?";
		String result ="관리자에게 문의 바랍니다.";
		String result_url = "MILK";
		
		try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, mprice);
		pstmt.setInt(2, mno);

		// 2. executeUpdate로 sql 구문 실행
		if(pstmt.executeUpdate()>0) { result="milk 테이블 수정 성공";}
		
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			if(pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
		}
		
		PrintWriter out = response.getWriter();
		out.print("<script>alert('" + result + "'); location.href='"+result_url+"';</script>");

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
