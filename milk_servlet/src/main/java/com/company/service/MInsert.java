package com.company.service;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.dao.Milk_dao;
import com.company.dto.Milk_dto;

public class MInsert implements MAction {

	@Override
	public void execu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		Milk_dao dao = new Milk_dao();
		Milk_dto dto = new Milk_dto();

		dto.setMname(request.getParameter("mname"));
		dto.setMprice(Integer.parseInt(request.getParameter("mprice")));

		if (dao.insert(dto) < 0) {
			out.print("<script>alert('실패'); location.href='list.milk';</script>");
			return;
		}
	}
}
