package com.company.jsp051;

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
 * Servlet implementation class ELBean004
 */
@WebServlet("/ELBean004")
public class ELBean004 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ELBean004() {
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
		request.getRequestDispatcher("insert.jsp").forward(request, response);

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
		String name = request.getParameter("name");
		int  price = Integer.parseInt(request.getParameter("price"));
		String description = request.getParameter("description");
		
		JavaDBManager db = new JavaDBManager();
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		String sql = "insert into elitem (name , price , description ) values (?,?,?)";
		String result= "관리자에게 문의바랍니다.";	
		conn = db.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setInt(   2, price);
			pstmt.setString(3, description);
			if(pstmt.executeUpdate() > 0 ) { result= "success";	 }
		} catch (SQLException e) { e.printStackTrace();
		} finally {
			if(pstmt != null) {try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }}
			if(conn  != null) {try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }}
		}
		//PrintWriter out = response.getWriter();
		//out.println("<script> alert('"+result+"');  </script>");  처리안됨.
		request.setAttribute("result", result);
		request.setAttribute("item"   , new ELItem( 1, name, price,  description));
		request.getRequestDispatcher("view.jsp").forward(request, response);
		
	}

}
