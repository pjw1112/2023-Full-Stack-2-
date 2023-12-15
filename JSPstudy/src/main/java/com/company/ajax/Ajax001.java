package com.company.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.company.jsp040.JavaDBManager;


/**
 * Servlet implementation class Ajax001
 */
@WebServlet("/Ajax001")
public class Ajax001 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ajax001() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		System.out.println("welcome"+name+"//"+age);
		PrintWriter out = response.getWriter();
		
		JavaDBManager db = new JavaDBManager();
		Connection conn = db.getConnection();
		
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("db연동 성공 칸료 칸료");
			out.println("<p>name : "+name+"</p><br>");
			out.println("<p>age : "+age+"</p><br>");
		}
		
		
		
		
		
		
		
//		request.getRequestDispatcher("jsp050_result.jsp").forward(request, response);
	 
	
	
	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
