package com.company.jsp051;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ELBean001
 */
@WebServlet("/ELBean001")
public class ELBean001 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ELBean001() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("jsp051_dto.jsp").forward(request, response); // 위임

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		ELDTO dto = new ELDTO(request.getParameter("name"), 10);
		request.setAttribute("dto", dto);
		request.getRequestDispatcher("jsp051_result.jsp").forward(request, response); // 위임
	}

}
