package com.company.ajax;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MailNaver
 */
@WebServlet("/MailNaver")
public class MailNaver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MailNaver() {
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
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
				
		PrintWriter out = response.getWriter();
		
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
				
		//2. 네이버 환경설정 : 정보
		String host = "smtp.naver.com";
		String user = "bananasyndro@naver.com"; //로그인 아이디
		String password = "Ogsily121@";			//로그인 비번
		
		//3. 받는 사람의 메일 주소 
		String to = "bananasyndro@naver.com";
		
		//4. 메일 보내기
		Properties props = new Properties();
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "587");
		
		// javax mail coul not convert socket to TLS ~
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.ssl.trust", host);
		props.put("mail.smtp.ssl.protocols", "TLSv1.2");
		
		Session session = 
				Session.getDefaultInstance(props, 
						new Authenticator() {

							@Override
							protected PasswordAuthentication getPasswordAuthentication() {
								// TODO Auto-generated method stub
								return new PasswordAuthentication(user,password);
			}
		});
		
		System.out.println("..................."+1);
		
		MimeMessage message = new MimeMessage(session);
		try {
			
			message.setFrom(new InternetAddress(user)); 	//보내는 사람
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));	//받는 사람
			
			message.setSubject(subject); //메일 제목
			//message.setText(content); 	// 진짜 문자그대로 텍스트만 보냄 HTML, 그림 , 파일 같은거 텍스트 그대로 날라감
			message.setContent(content, "text/html; charset=euc-kr");	//원래 UTF-8 해야 되는데 네이버 서버 업데이트 되면 깨짐
			
			System.out.println("......................"+2);
			Transport.send(message);
			
			
			out.print("<script>alert('메일보내기에 성공했습니다.'); location.href='7. Ajax/ajax002_mail_send.jsp';</script>");
			
			
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
