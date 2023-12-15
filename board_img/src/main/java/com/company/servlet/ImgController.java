package com.company.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.imgService.*;

public class ImgController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ImgController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		action(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		action(request, response);
	}

	protected void action(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ImgAction controller;

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		String path = request.getServletPath();
		String url = "", msg = "관리자에게 문의 바랍니다.";

		if (path.equals("/list.upload")) { // list

			controller = new ImgList();
			controller.execu(request, response);

			url = "/jsp062_result.jsp";
			request.getRequestDispatcher(url).forward(request, response);

		} else if (path.equals("/insert_view.upload")) { // insert

			
			url =  "/jsp062_form.jsp";
			request.getRequestDispatcher(url).forward(request, response);
			
		} else if (path.equals("/insert.upload")) { // insert

			controller = new ImgInsert();
			controller.execu(request, response);

			url = "list.upload";
			msg="아이템 추가 성공";
			out.print("<script>alert('" + msg + "'); location.href='" + url + "';</script>");

		}
		
	}

}
