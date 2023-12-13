package com.company.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.company.service.MAction;
import com.company.service.MDelete;
import com.company.service.MInsert;
import com.company.service.MList;
import com.company.service.MRead;
import com.company.service.MUpdate;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public FrontController() {
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

		
		MAction controller;
				
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String path = request.getServletPath();
		String url ="", msg = "관리자에게 문의 바랍니다.";
		
		
		if (path.equals("/list.milk")) { // list

			controller = new MList();
			controller.execu(request, response);
			
			url="/milk/milk.jsp";
			request.getRequestDispatcher(url).forward(request, response);
		
		} else if (path.equals("/insert.milk")) { // insert

			controller = new MInsert();
			controller.execu(request, response);
			
			url="list.milk";
			msg="삽입 성공";
			
		} else if (path.equals("/detail.milk")) { // detail

			controller = new MRead();
			controller.execu(request, response);
			
			url="milk/milk_select.jsp";
			
			request.getRequestDispatcher(url).forward(request, response);
			
		} else if (path.equals("/edit.milk")) { // update

			controller = new MUpdate();
			controller.execu(request, response);
			
			url="list.milk";
			msg="수정 성공";
			
		} else if (path.equals("/delete.milk")) { // delete

			controller = new MDelete();
			controller.execu(request, response);
			
			url="list.milk";
			msg="삭제 성공";
			
		}

		out.print("<script>alert('" + msg + "'); location.href='" + url + "';</script>");
	}

}
