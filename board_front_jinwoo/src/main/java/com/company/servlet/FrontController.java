package com.company.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.company.service.BAction;
import com.company.service.BDelete;
import com.company.service.BWrite;
import com.company.service.BList;
import com.company.service.BDetail;
import com.company.service.BEdit;
import com.company.service.BHit;

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

		BAction controller;

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		String path = request.getServletPath();
		String url = "", msg = "관리자에게 문의 바랍니다.";

		if (path.equals("/list.do")) { // list

			controller = new BList();
			controller.execu(request, response);

			url = "/board/list.jsp";
			request.getRequestDispatcher(url).forward(request, response);

		} else if (path.equals("/write_view.do")) { // insert

			url = "/board/write.jsp";
			request.getRequestDispatcher(url).forward(request, response);

		} else if (path.equals("/write.do")) { // detail

			controller = new BWrite();
			controller.execu(request, response);
			msg = "글쓰기에 성공했습니다.";
			url = "list.do";

		} else if (path.equals("/detail.do")) { // delete
			
			// 조회수를 먼저 올린다음에
			// 상세보기로 넘어 가야 함
			// location.href
			
			controller = new BHit();
			controller.execu(request, response);
			
			controller = new BDetail();
			controller.execu(request, response);
			url = "board/detail.jsp";
			request.getRequestDispatcher(url).forward(request, response);

		} else if (path.equals("/edit_view.do")) { // update

			controller = new BDetail();
			controller.execu(request, response);
			
			url = "board/edit.jsp";
			request.getRequestDispatcher(url).forward(request, response);

		} else if (path.equals("/edit.do")) { // update

			controller = new BEdit();
			controller.execu(request, response);

			msg = "수정 성공";
			url = "list.do";
			
		} else if (path.equals("/delete_view.do")) { // delete

			url = "board/delete.jsp";
			request.getRequestDispatcher(url).forward(request, response);

		} else if (path.equals("/delete.do")) { // delete

			controller = new BDelete();
			controller.execu(request, response);

			msg = "삭제 성공";
			url = "list.do";
		}

		out.print("<script>alert('" + msg + "'); location.href='" + url + "';</script>");
	}

}
