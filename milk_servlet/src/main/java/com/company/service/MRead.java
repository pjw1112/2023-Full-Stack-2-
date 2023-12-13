package com.company.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.company.dao.Milk_dao;
import com.company.dto.Milk_dto;

public class MRead implements MAction {

	@Override
	public void execu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		Milk_dao dao = new Milk_dao(); 
		Milk_dto dto = new Milk_dto(); 
		dto.setMno(Integer.parseInt(request.getParameter("mno")));
				
		request.setAttribute("list", dao.search(dto));
	}
}
