package com.company.dbmanager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class Upload001
 */
@WebServlet("/Upload001.upload")
public class Upload001 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upload001() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 경로 설정
		String path_test ="/upload/";
		String path_hosting = request.getServletContext().getRealPath("/upload/");
		System.out.println("............."+path_hosting);
		
		//2. 파일 업로드
		MultipartRequest multi =
				new MultipartRequest( request, path_test, 1024*1024*5, "UTF-8", new DefaultFileRenamePolicy());
		
		String file = multi.getFilesystemName("file");
		if(file == null) {System.out.println("파일 업로드 안됨!");}
		
		request.setAttribute("file", file);
		request.setAttribute("title", multi.getParameter("title"));
		request.getRequestDispatcher("jsp062_result.jsp").forward(request, response);
		
		
		
	}

}
