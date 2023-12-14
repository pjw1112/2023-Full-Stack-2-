package com.company.service;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.company.dao.board_dao;
import com.company.dto.Board_dto;

public class BHit implements BAction {

	@Override
	public void execu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		board_dao dao = new board_dao();
		Board_dto dto = new Board_dto();

		dto.setBno(Integer.parseInt(request.getParameter("bno")));
		
		if (dao.update_hit(dto) > 0) {
			out.print("<script>alert('실패'); location.href='list.do';</script>");
			return;
		}		
		
	}
}
