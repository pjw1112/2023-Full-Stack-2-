package com.company.imgService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.company.dao.ImgDao;


public class ImgList implements ImgAction {

	@Override
	public void execu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		ImgDao dao = new ImgDao();
		request.setAttribute("list", dao.list());

	}
}
