package com.company.imgService;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface ImgAction {

	public void execu(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException;

}
