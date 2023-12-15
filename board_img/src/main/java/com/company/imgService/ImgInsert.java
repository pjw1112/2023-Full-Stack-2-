package com.company.imgService;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.company.dao.ImgDao;
import com.company.dto.ImgDto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class ImgInsert implements ImgAction {

	@Override
	public void execu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();

		// 1. 경로 설정
//		String path_test = "/upload/";
		String path_hosting = request.getServletContext().getRealPath("/upload/");
//		System.out.println("............." + path_hosting);
//
		// 2. 파일 업로드
		MultipartRequest multi = new MultipartRequest(request, path_hosting, 1024 * 1024 * 5, "UTF-8",
				new DefaultFileRenamePolicy());

		String file = multi.getFilesystemName("file");
		if (file == null) {
			System.out.println("파일 업로드 안됨!");
		}else {
			System.out.println("파일 업로드 완료!");
		}
		System.out.println("================ImgInsert서블릿====================");
		System.out.println("path_hosting : "+path_hosting);
		System.out.println("file : "+file);
		System.out.println("================================================");
//		request.setAttribute("file", file);
//		request.setAttribute("title", multi.getParameter("title"));
//		request.getRequestDispatcher("jsp062_result.jsp").forward(request, response);

		
		
		
		ImgDao dao = new ImgDao();
		ImgDto dto = new ImgDto();

		dto.setName(multi.getParameter("name"));
		dto.setPrice(Integer.parseInt(multi.getParameter("price")));
		dto.setDescription(multi.getParameter("description"));
		dto.setImg(file);
//		dto.setImg(path_hosting+multi.getParameter("title"));
		if (dao.insert(dto) < 0) {
			out.print("<script>alert('실패'); location.href='list.upload';</script>"); // history.go(-1) 써도 됨
			return;
		}
	}
}
