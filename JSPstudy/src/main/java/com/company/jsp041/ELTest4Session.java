package com.company.jsp041;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class ELTest4Session
 */
@WebServlet("/ELTest4Session")
public class ELTest4Session extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ELTest4Session() {
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
		 
		request.setCharacterEncoding("UTF-8");
		// 1. SESSION 설정 - elTest, sessionTest
		HttpSession session = request.getSession();
		session.setAttribute("elTest","sessionTestValue");
		
		// 2. PARAMETER (디스패쳐로 걍 넘겨 줌)
		
		request.getRequestDispatcher("jsp050_result.jsp").forward(request, response);
	 
		
	}

}
